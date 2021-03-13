package systems.controllers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import systems.domains.ContentReplyVO;
import systems.domains.ContentVO;
import systems.domains.MemberVO;
import systems.services.MainServiceImpl;



@Controller
public class MainController {

	@Autowired
	private MainServiceImpl mainService;
	//기본 mvc
	@RequestMapping("buenoBasic/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url + "실행");
        return "buenoBasic/"+url;
    }
	
	// infoWrite -> 정보글 등록하기 -> infoList 
	@RequestMapping("buenoBasic/writeContent.do")
	public String writeinfo(ContentVO vo) {
		System.out.println("글등록 controller");
		// con_content에서 첫번째 img 태그 src값 가져오기
		String content = vo.getCon_content();
		int start = content.indexOf("src=") + 5; // src값의 시작 index
		int end = content.indexOf("\"", start);
		vo.setCon_img(content.substring(start, end));
		System.out.println("뽑아낸 썸네일"+content.substring(start, end));
		
		mainService.writeInfo(vo);
		String temp = "";
		try {
			temp = "redirect:infoList.do?con_cate=" + URLEncoder.encode(vo.getCon_cate(), "UTF-8");
		}catch (Exception e) {
		}
		return temp;
	}
	
	//메인페이지 로딩
	@RequestMapping("buenoBasic/main.do")
	public void main(Model m,HttpSession session) {
		//슬라이더 정보글 가져오기
		List<ContentVO> result = mainService.getAllContent();
		m.addAttribute("contents",result);
		
		//내 북마크 리스트 로딩
		//만약 로그인 안되어있으면 패스,
		MemberVO mem = (MemberVO)session.getAttribute("userInfo");
		if(mem==null) {
			
		}else { //로그인 되어있으면 리스트 가져오기
			// mem_num으로 북마크 값 가져오기
			String mem_num = mem.getMem_num();
			String bm = mainService.getBookmark(mem_num);
			
			// 가져온 북마크 파싱
			String[] bms = bm.split("/");
			// 북마크들 담을 list
			List<ContentVO> list = new ArrayList<ContentVO>();
			for(String con_num:bms) {
				list.add(mainService.getOneContent(Integer.parseInt(con_num)));
			}
			m.addAttribute("bookmarks", list);
		}
	}
	
	//infoList 페이지 불러오기(건강, 행동 리스트)
	@RequestMapping("buenoBasic/infoList.do")
	public void infoList(String con_cate, Model m) {
		// 메인에서 카테고리 이름 받아와서 con_cate 해당 카테고리 목록 가져오기
		List<ContentVO> result = mainService.getCateContent(con_cate);
		m.addAttribute("ConList", result);
		m.addAttribute("cate", result.get(0).getCon_cate());
	}
	
	//infoCard 페이지 불러오기 (음식, 백과 리스트)
	@RequestMapping("buenoBasic/infoCard.do")
	public void infoCard(String con_cate, Model m) {
		// 메인에서 카테고리 이름 받아와서 con_cate 해당 카테고리 목록 가져오기
		List<ContentVO> result = mainService.getCateContent(con_cate);
		m.addAttribute("ConList", result);
		m.addAttribute("cate", result.get(0).getCon_cate());
	}
	
	
	//infoDetail 페이지 불러오기 ()
	@RequestMapping("buenoBasic/infoDetail.do")
	public void infoDetail(int con_num,Model m) { //썸네일 클릭 시 컨텐츠 id 가져오기
		ContentVO detail = mainService.getOneContent(con_num);
		
		// 크롤링 시 추가된 불필요한 태그 삭제
		detail.setCon_content(detail.getCon_content().replace("<div>?</div>", ""));
		m.addAttribute("detail", detail);
		// 해당 글 댓글 리스트 가져오기
		List<Map<String, String>> list = mainService.getReplyList(con_num);
		m.addAttribute("replys", list);
		m.addAttribute("recount",list.size());
	}
	
	// 검색된 키워드가 con_content에 포함된 컨텐츠 전부 가져와 검색목록 페이지 불러오기
	@RequestMapping("buenoBasic/searchList.do")
	public void search(String keyword,Model m) {
		List<ContentVO> result = mainService.searchAll(keyword);
		m.addAttribute("result", result);
		m.addAttribute("count", result.size());
		
	}
	
	// ajax 연동하여 북마크 추가,삭제
	@RequestMapping(value="buenoBasic/bm.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String bm(String con_num, HttpServletRequest request, Model m) {
		String result = "ok";
		HttpSession session = request.getSession();
		MemberVO mem = (MemberVO)session.getAttribute("userInfo"); // Object인 세션 형변환
		// mem_num
		String mem_num = mem.getMem_num();
		// mem_num으로 해당 유저의 bookmark 값 가져오기
		String bm = mainService.getBookmark(mem_num);
		// 파싱하여 con_num 포함되어있는지 확인
		if(bm==null) { // 북마크가 없다면
			System.out.println("북마크 처음 넣기! controller");
			bm = con_num;
			// mem_num과 bm 가지고 updateBookmark
			mainService.updateBookmark(mem_num, bm);
			
			return result;
		}
		String[] bms = bm.split("/"); // 바로 arraylist에 넣을 수 없음
		List<String> list = new ArrayList<String>();
		Collections.addAll(list, bms); // 배열을 arrayList로 변환
		String bms_result = new String();
		
		if(!(bm.isEmpty())) {
			if(list.contains(con_num)) { //이미 북마크한 정보글이라면
				System.out.println("이미했던거네!");
				list.remove(con_num); //북마크 리스트에서 지우기
				result = "no";
			}else {
				list.add(con_num); //없다며 북마크 리스트에 추가
			}
			for(int i=0;i<list.size();i++) {
				if(i==0) { // 리스트 처음값은 '/' 없이 넣기
					bms_result = list.get(i);
				}else { // 처음 넣는 값이 아니면 기존 문자열에 '/' 붙여서 넣기 
					bms_result += "/" + list.get(i);
				}
			}
		}
		// mem_num과 bms_result 가지고 updateBookmark
		mainService.updateBookmark(mem_num, bms_result);
		//해당 글을 북마크한적 없으면 ok, 있으면 no 리턴
		return result;
	}
	
	// 내 북마크 리스트 띄우기
	@RequestMapping("buenoBasic/bmList.do")
	public String bmList(Model m,HttpSession session){
		// mem_num으로 북마크 얻어오기
		MemberVO mem = (MemberVO)session.getAttribute("userInfo");
		String mem_num = mem.getMem_num();
		String bm = mainService.getBookmark(mem_num);
		
		// 가져온 북마크 파싱
		String[] bms = bm.split("/");
		// 북마크들 담을 list
		List<ContentVO> list = new ArrayList<ContentVO>();
		for(String con_num:bms) {
			list.add(mainService.getOneContent(Integer.parseInt(con_num)));
		}
		m.addAttribute("bookmarks", list);
		
		return "/mn/header.jsp";
	}
	
	//summernote 이미지 서버에 업로드 후 웹 경로로 리턴해서 summernote에 띄우기
	@RequestMapping(value="buenoBasic/imageUpload.do")
	@ResponseBody
	public String imageUpload(@RequestParam("file") MultipartFile file,HttpServletResponse response) throws Exception{
		System.out.println("이미지컨트롤러 왔니?"+file.getOriginalFilename());
//		response.setContentType("application/json");
//		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyMMddhhmmss");
		// 업로드 파일 접근
		if(! file.isEmpty()){
			String img_name;
			//파일 이름
			img_name = format.format(now)+ file.getOriginalFilename();
			String path = "C:\\Users\\Kosmo_22\\git\\MN\\mn\\src\\main\\webapp\\resources\\upload\\"+ img_name;
			
			//***********************************************
			// 해당 경로로 변경
			File f = new File(path);
			// 파일 저장
			file.transferTo(f);
			
			String webPath = "http://192.168.0.79:8080/mn/resources/upload/"+img_name; //외부에서 접근 가능한 해당 이미지 링크
			Thread.sleep(4000); //파일 업로드 시간 기다려주기
			return webPath;
		}
		return null;
	}
	
	@RequestMapping(value="buenoBasic/replyinsert.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String replyinsert(ContentReplyVO vo,HttpSession session) {
		MemberVO mem = (MemberVO)session.getAttribute("userInfo");
		String mem_num = mem.getMem_num();
		vo.setMem_num(mem_num);
		// 댓글 입력
		mainService.insertReply(vo);
		// mem_num 이용하여 해당 계정 최신 댓글정보 가져오기
//		ContentReplyVO result = mainService.currentReply(mem_num);
//		System.out.println("지금 쓴 댓글"+result.getMem_num());
//		JSONObject json = new JSONObject();
//		json.put("mem_name", result.getMem_num());
//		json.put("re_date",result.getRe_date());
//		json.put("re_content", result.getRe_content());
//		System.out.println(json.get("mem_name"));
		
		return "댓글 등록이 완료되었습니";
	}
	
	
	
}

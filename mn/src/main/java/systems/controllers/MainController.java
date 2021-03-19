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
	/**기본 mvc*/
	@RequestMapping("buenoBasic/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url + "실행");
        return "buenoBasic/"+url;
    }
	
	/** infoWrite -> 정보글 등록하기 -> infoList*/ 
	@RequestMapping("buenoBasic/writeContent.do")
	public String writeinfo(ContentVO vo) {
		System.out.println("글등록 controller");
		// con_content에서 첫번째 img 태그 src값 가져오기
		String content = vo.getCon_content();
		int start = content.indexOf("src=") + 5; // src값의 시작 index
		int end = content.indexOf("\"", start);
		vo.setCon_img(content.substring(start, end)); //썸네일 setting
		
		// 글 수정을 위해 content 전체 내용을 div 태그로 한번 묶어주기
		vo.setCon_content("<div class=\"entry-content entry clearfix\">"+content+"</div>");
		mainService.writeInfo(vo);
		String temp = "";
		try {
			temp = "redirect:infoList.do?con_cate=" + URLEncoder.encode(vo.getCon_cate(), "UTF-8")+"&pageNo=1";
		}catch (Exception e) {
		}
		return temp;
	}
	
	/**메인페이지 로딩*/
	@RequestMapping("buenoBasic/main.do")
	public void main(String mem_email,Model m,HttpSession session) {
		//sns (카카오,네이버)로 로그인 시 db에 저장 후 세션에 저장
		if(mem_email != null) {
			Object check= mainService.naverCheck(mem_email);
			// 등록되지 않은 네이버 아이디라면 회원정보 등록 후 세션 저장, 북마크까지 가져오기
			if(check == null) {
				System.out.println("네이버 이메일"+mem_email);
				MemberVO vo = new MemberVO();			
				
				vo.setMem_email(mem_email);
				vo.setMem_name(mem_email.substring(0, mem_email.indexOf("@")));
				
				// db에 입력 후 해당 mem_num 가져오기
				mainService.naverRegist(vo);
				String mem_num = vo.getMem_num();
				//세션에 회원정보 저장
				session.setAttribute("userInfo", mainService.getMember(mem_num));
			}else { //이미 있는 아이디면 해당 mem_num으로 레코드 가져와서 세션에 바로 저장
				session.setAttribute("userInfo", (MemberVO)check);
			}
		}
		//슬라이더 정보글 가져오기
		List<ContentVO> result = mainService.getAllContent();
		m.addAttribute("contents",result);
		//인기 정보 3개 가져오기
		m.addAttribute("popular", mainService.getpopular());
		//최신 정보 3개 가져오기
		m.addAttribute("latest", mainService.getLatest());
		// 북마크 처리
			MemberVO mem = (MemberVO)session.getAttribute("userInfo");
			//로그인 된 상태일때만 북마크 리스트 가져오기
			if(mem!=null) {
				//내 북마크 리스트 로딩
				// mem_num으로 북마크 값 가져오기
				String mem_num = mem.getMem_num();
				String bm = mainService.getBookmark(mem_num);
				if(bm!=null) { //북마크가 있을 때만
					// 가져온 북마크 파싱
					String[] bms = bm.split("/");
					// 북마크들 담을 list
					List<ContentVO> list = new ArrayList<ContentVO>();
					for(String con_num:bms) {
						list.add(mainService.getOneContent(Integer.parseInt(con_num)));
					}
					session.setAttribute("bookmarks", list);
				}
			}
		
	}
	
	/**infoList 페이지 불러오기(건강, 행동 리스트)*/
	@RequestMapping("buenoBasic/infoList.do")
	public void infoList(String con_cate,int pageNo, Model m) {
		
		int totalpage = mainService.getTotalPage(con_cate); // 총 페이지 갯수
		System.out.println("페이지번호"+pageNo);
		// 총 페이지 갯수보다 페이지 번호가 크다면 페이지는 총 페이지 갯수
		if(totalpage < pageNo) {
			pageNo = totalpage;
		}
		// 화면에 띄울 페이지 갯수 10개
		int pagecount = 10;
		
		int startpage = ((pageNo-1)/pagecount) * pagecount +1;
		int endpage = startpage + pagecount - 1;
		
		// con_cate, pageNo 받아 해당 카테고리 목록 가져오기 (메인에서 접근시 pageNo = 1)
		List<ContentVO> result = mainService.getCateContent(con_cate,pageNo);
		m.addAttribute("ConList", result);
		m.addAttribute("cate", con_cate);
		// 페이지 10개씩 띄우기
		m.addAttribute("start",startpage);
		m.addAttribute("end",endpage);
		m.addAttribute("total", totalpage);
		m.addAttribute("now", pageNo);
		
	}
	
	/**infoCard 페이지 불러오기 (음식, 백과 리스트)*/
	@RequestMapping("buenoBasic/infoCard.do")
	public void infoCard(String con_cate, int pageNo,Model m) {
		
		// con_cate, pageNo 받아 해당 카테고리 목록 가져오기 (메인에서 접근시 pageNo = 1)
		List<ContentVO> result = mainService.getCateContent(con_cate,pageNo);
		m.addAttribute("ConList", result);
		m.addAttribute("cate", result.get(0).getCon_cate());
		
		// 페이지 갯수 띄우기
		int totalpage = mainService.getTotalPage(con_cate);
		m.addAttribute("pages", totalpage);
	}
	
	
	/** infoDetail 컨텐츠 상세페이지 불러오기 () */
	@RequestMapping("buenoBasic/infoDetail.do")
	public void infoDetail(int con_num,Model m, HttpSession session) { //썸네일 클릭 시 con_num 가져오기
		//해당 컨텐츠 조회수 1 올리기
		mainService.addViewCount(con_num);
		// 컨텐츠 내용 가져오기
		ContentVO detail = mainService.getOneContent(con_num);
		// mem_num으로 북마크 얻어오기
		MemberVO mem = (MemberVO)session.getAttribute("userInfo");
		//이미 북마크 했는지 안했는지 여부 판단하여 표시
	    //북마크 가져와서 받아온 con_num이 포함되어있는지
		if(mem!=null) {
			String mem_num = mem.getMem_num();
			String bm = mainService.getBookmark(mem_num);
			if(bm != null) 
			{
				String[] bms = bm.split("/"); // 바로 arraylist에 넣을 수 없음
				List<String> list = new ArrayList<String>();
				Collections.addAll(list, bms); // 배열을 arrayList로 변환
				if(list.contains(Integer.toString(con_num))) {
					m.addAttribute("bmcheck", "yes");
				}
				
			}
		}
		
		m.addAttribute("detail", detail);
		// 해당 글 댓글 리스트 가져오기
		List<Map<String, String>> list = mainService.getReplyList(con_num);
		m.addAttribute("replys", list);
		m.addAttribute("recount",list.size());
		
		// 광고 가져오기
		m.addAttribute("ads",mainService.getAllAD());
		
	}
	
	// 검색된 키워드가 con_content에 포함된 컨텐츠 전부 가져와 검색목록 페이지 불러오기
	@RequestMapping("buenoBasic/searchList.do")
	public void search(String keyword,Model m) {
		List<ContentVO> result = mainService.searchAll(keyword);
		m.addAttribute("result", result);
		m.addAttribute("count", result.size());
		
	}
	
	/** ajax 연동하여 북마크 추가,삭제*/
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
	
	/**내 북마크 리스트 띄우기*/
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
	
	/**summernote 이미지 서버에 업로드 후 웹 경로로 리턴해서 summernote에 띄우기*/
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
	
	/**댓글 입력*/
	@RequestMapping(value="buenoBasic/replyinsert.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String replyinsert(ContentReplyVO vo,HttpSession session) {
		MemberVO mem = (MemberVO)session.getAttribute("userInfo");
		String mem_num = mem.getMem_num();
		vo.setMem_num(mem_num);
		// 댓글 입력
		mainService.insertReply(vo);
		// mem_num 이용하여 댓글정보 가져와서 방금 넣은 댓글 번호 가져오기
		ContentReplyVO result = mainService.currentReply(mem_num);
		String re_num = Integer.toString(result.getRe_num());
		
		return re_num;
	}
	
	/**댓글 수정*/
	@RequestMapping(value="buenoBasic/replyupdate.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String replyupdate(ContentReplyVO vo) {
		//넘어온 re_content와 re_num으로 해당 댓글 내용 업데이트
		mainService.replyupdate(vo);
		return "댓글이 수정되었습니다.";
	}
	
	/**댓글 삭제*/
	@RequestMapping(value="buenoBasic/replydelete.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String replydelete(ContentReplyVO vo) {
		//넘어온 re_num으로 해당 댓글 내용 업데이트
		mainService.replydelete(vo);
		System.out.println("삭제 성공");
		return "댓글이 삭제되었습니다.";
	}
	
	/** con_num 이용하여 해당 정보글을 summernote에 세팅*/
	@RequestMapping("buenoBasic/infoModify.do")
	public void infoModify(int con_num,Model m) {
		//정보글 내용 가져오기
		m.addAttribute("content", mainService.getOneContent(con_num));
	}
	
	/** infoModify -> 정보글 수정하기 -> infoList*/ 
	@RequestMapping("buenoBasic/updateContent.do")
	public String updateinfo(ContentVO vo) {
		System.out.println("글수정 controller");
		// con_content에서 첫번째 img 태그 src값 가져오기
		String content = vo.getCon_content();
		int start = content.indexOf("src=") + 5; // src값의 시작 index
		int end = content.indexOf("\"", start);
		vo.setCon_img(content.substring(start, end)); //썸네일 setting
		
		// 글 수정을 위해 content 전체 내용을 div 태그로 한번 묶어주기
		vo.setCon_content("<div class=\"entry-content entry clearfix\">"+content+"</div>");
		//con_num에 해당하는 컨텐츠 업데이트
		mainService.updateContent(vo);
		
		String temp = "";
		try {
			// 한글을 쿼리스트링으로 보낼 때 보통 웹에서는 자동 인코딩이 되지만 현재는 수동으로 인코딩 해야함.
			temp = "redirect:infoList.do?con_cate=" + URLEncoder.encode(vo.getCon_cate(), "UTF-8");
		}catch (Exception e) {
		}
		return temp;
	}
	
	
	
	
	
}

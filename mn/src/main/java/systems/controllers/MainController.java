package systems.controllers;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		String temp = "";
		try {
			temp = "redirect:infoList.do?con_cate=" + URLEncoder.encode(vo.getCon_cate(), "UTF-8");
		}catch (Exception e) {
			// TODO: handle exception
		}
		mainService.writeInfo(vo);
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
			int mem_num = mem.getMem_num();
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
		
		// 크롤링 때 replace했던 작은 따옴표 다시 원래대로 replace
		detail.setCon_content(detail.getCon_content().replace("<div>?</div>", ""));
		m.addAttribute("detail", detail);
	}
	
	// 검색된 키워드가 con_content에 포함된 컨텐츠 전부 가져와 검색목록 페이지 불러오기
	@RequestMapping("buenoBasic/searchList.do")
	public void search(String keyword,Model m) {
		List<ContentVO> result = mainService.searchAll(keyword);
		m.addAttribute("result", result);
		m.addAttribute("count", result.size());
		
	}
	
	// 북마크 ajax 연동하여 추가,삭제
	@RequestMapping(value="buenoBasic/bm.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String bm(String con_num, HttpServletRequest request, Model m) {
		String result = "ok";
		HttpSession session = request.getSession();
		MemberVO mem = (MemberVO)session.getAttribute("userInfo"); // Object인 세션 형변환
		// mem_num
		int mem_num = mem.getMem_num();
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
		int mem_num = mem.getMem_num();
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
	
	
}

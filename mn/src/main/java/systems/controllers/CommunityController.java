package systems.controllers;

import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.BoardVO;
import systems.services.CommunityService;
import systems.services.CommunityServiceImpl;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityServiceImpl CommunityServiceImpl;  //변수명은 소문자
	
	//커뮤니티 서머노트 보이기 부분
	@RequestMapping("communityBoard/commuWriting.do")
	public String commuWriting() {
		return "communityBoard/communityInsert";
		
	}
	
	
	//커뮤니티 게시판 등록
	@RequestMapping(value="communityBoard/CommunityInsert.do")
	public String CommunityInsert(BoardVO vo) {
		System.out.println("CommunityVO"+ vo);
		System.out.println(vo.getBo_cate());
		System.out.println("community 컨드롤 왔니?? 와라와라");
		//1. id를 통해서 db에서 이름을 가져옴
		//2. 가져온 이름을 합쳐서 insert에 넘김.
		CommunityServiceImpl.CommunityInsert(vo);
		
		
		return "redirect:BoardList.do";

	}
	
	//커뮤니티 게시판 목록보기
	@RequestMapping(value="communityBoard/BoardList.do")
	public String getBoardList(Model model) {
		System.out.println("BoardList 컨트롤 탔니?");
		
		List<BoardVO> vo = CommunityServiceImpl.getBoardList();
		System.out.println(vo.size());
		System.out.println("제목"+vo.get(0).getBo_title());
		System.out.println("날짜"+vo.get(0).getBo_date());
		
		
			model.addAttribute("vo", vo);
		

		return "communityBoard/communityboard";
	
	}
	
	//커뮤니티 상세페이지 보기
	@RequestMapping(value="communityBoard/boardDetail.do") //model
	public String boardDetail(Model model,int bo_num) throws Exception{ 
		System.out.println("상세페이지 컨트롤");
		
		List<Map> list = CommunityServiceImpl.boardDetail(bo_num);
		
		System.out.println(list.get(0));
		
		model.addAttribute("data",list.get(0));
		
		return "communityBoard/communityboard_Reply";
	}
	
}

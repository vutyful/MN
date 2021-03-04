package systems.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.BoardVO;
import systems.services.CommunityService;
import systems.services.CommunityServiceImpl;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityServiceImpl CommunityServiceImpl;  //변수명은 소문자
	
	//커뮤니티 게시판 등록
	@RequestMapping(value="CommunityInsert.do")
	public String CommunityInsert(BoardVO vo) {
		System.out.println("CommunityVO"+ vo);
		System.out.println("community 컨드롤 왔니?? 와라와라");
		//1. id를 통해서 db에서 이름을 가져옴
		//2. 가져온 이름을 합쳐서 insert에 넘김.
		CommunityServiceImpl.CommunityInsert(vo);
		
		
		return "redirect:BoardList.do";

	}
	
	//커뮤니티 게시판 목록보기
	@RequestMapping(value="BoardList.do")
	public String getBoardList(Model model) {
		System.out.println("BoardList 컨트롤 탔니?");
		
		List<BoardVO> vo = new ArrayList<BoardVO>();
		vo = CommunityServiceImpl.getBoardList();
		System.out.println("아이디"+vo.get(0).getMem_num());
		System.out.println("날짜"+vo.get(0).getBo_date());
	
//		for(int i = 0; i < vo.size(); i++) {
//			System.out.println(vo.get(i).getBo_title());
//		}
		model.addAttribute("vo",vo);
		
		return "/communityBoard/communityboard";
		
	}
	
	
}

package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.BoardVO;
import systems.domains.PetVO;
import systems.services.BoardService;
import systems.services.PetService;

@Controller
public class AdminController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private PetService petService;

	// 첫 통계페이지에서 바로 통계화면
	@RequestMapping(value="manager/statistics.do")
	public void admin2(BoardVO boardvo,PetVO petvo ,Model model) {
		System.out.println("통계페이지");

		List<BoardVO> Total = boardService.boardTotal(boardvo); // 총 게시물 수
		List<BoardVO> Today = boardService.boardToday(boardvo); // 오늘의 게시물 수
		
		model.addAttribute("boardTotal", Total);
		model.addAttribute("boardToday", Today);
		

		List<PetVO> Dog = petService.petDog(petvo); // 강아지 수
		List<PetVO> Cat = petService.petCat(petvo); // 고양이 수
		
		model.addAttribute("petDog", Dog);
		model.addAttribute("petCat", Cat);
	}
	


}

package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.BoardVO;
import systems.services.BoardService;

@Controller
public class AdminController {

	@Autowired
	private BoardService boardService;

	// 첫 통계페이지에서 바로 통계화면
	@RequestMapping(value="admin2.do")
	public String admin2(BoardVO vo, Model model) {

		List<BoardVO> Total = boardService.boardTotal(vo); // 총 게시물 수
		List<BoardVO> Today = boardService.boardToday(vo); // 오늘의 게시물 수

		model.addAttribute("boardTotal", Total);
		model.addAttribute("boardToday", Today);

		return "manager/admin2";
	}

}

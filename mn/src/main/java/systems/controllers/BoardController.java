package systems.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.BoardVO;
import systems.services.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="board.do")
	public String boardList(BoardVO vo, Model model) {

		List <BoardVO> list = boardService.boardList(vo);
		model.addAttribute("boardList", list);

		System.out.println("---게시글관리페이지로 이동---");
		return "manager/board";
	}
}

package systems.controllers;

import java.util.List;

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
	
	//관리자페이지 게시글 콘트롤러
	@RequestMapping(value="manager/board.do")
	public void boardList(BoardVO vo, Model model) {

		List <BoardVO> list = boardService.boardList(vo);
		model.addAttribute("boardList", list);

		System.out.println("---관리자 게시글관리페이지로 이동---");
	}
	
	//관리자페이지 글삭제.
	@RequestMapping(value="manager/boardDelete.do")
	public void boardDelete(BoardVO vo, Model model) {
		
        boardService.boardDelete(vo);
        
		List <BoardVO> list = boardService.boardList(vo);
		model.addAttribute("boardList", list);

	}
}

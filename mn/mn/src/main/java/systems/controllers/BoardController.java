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

	// 관리자페이지 게시글 콘트롤러
	@RequestMapping(value = "manager/board.do")
	public void boardList(BoardVO vo, Model model) {

		List<BoardVO> list = boardService.boardList(vo);
		model.addAttribute("boardList", list);

		System.out.println("---관리자 게시글관리페이지로 이동---");
	}

	// 관리자페이지 글삭제. 페이지 이동이 아니어서 void아닌 String으로
	@RequestMapping(value = "manager/boardDelete.do")
	public String boardDelete(BoardVO vo, Model model) {
		boardService.boardDelete(vo);
		List<BoardVO> list = boardService.boardList(vo);
		model.addAttribute("boardList", list);
		// 리다이렉트로 지워진 게시글 다시 출력.
		return "redirect:board.do";
	}

	@RequestMapping(value = "manager/boardHide.do")
	public String boardHide(BoardVO vo) {
		System.out.println("글 숨기기");
		boardService.boardHide(vo);
		return "redirect:board.do";
	} // 관리자페이지 글 숨기기버튼

	@RequestMapping(value = "manager/boardShow.do")
	public String boardShow(BoardVO vo) {
		System.out.println("글 나타내기");
		boardService.boardShow(vo);
		return "redirect:board.do";
	} // 관리자페이지 글 나타내기버튼
	
	@RequestMapping(value = "manager/boardContent.do")
		public void boardContent(BoardVO vo, Model model) {
			System.out.println("관리자 - 글 내용 페이지");
			
			BoardVO temp = boardService.boardContent(vo);
			model.addAttribute("boardContent",temp);

		};
	
}

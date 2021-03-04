package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.BoardDAOImpl;
import systems.domains.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAOImpl boardDAO;
	
	@Override
	public List<BoardVO> boardList(BoardVO vo) {
		return boardDAO.boardList(vo);
	}//관리자게시판 리스트 불러오기

	public int boardDelete(BoardVO vo) {
		return boardDAO.boardDelete(vo);
	}//관리자게시판 글 삭제하기.
	
	
	public List<BoardVO> boardTotal(BoardVO vo) {
		return boardDAO.boardTotal(vo);
	}
	//관리자페이지 통계 게시판 글 총수
	
	public List<BoardVO> boardToday(BoardVO vo){
		return boardDAO.boardToday(vo);
		//관리자페이지 통계 계시판 오늘 글 수
	}
	
	
}

package systems.services;

import java.util.List;

import systems.domains.BoardVO;

public interface BoardService {
	
	
	List<BoardVO> boardList(BoardVO vo);//관리자게시판 리스트 불러오기
	
	int boardDelete(BoardVO vo);//관리자게시판 글 삭제
	
	List<BoardVO> boardTotal(BoardVO vo);//관리자페이지 통계 게시판 글 총수
	
	List<BoardVO> boardToday(BoardVO vo);//관리자페이지 통계 계시판 오늘 글 수
	
	
	
	
}
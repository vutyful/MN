package systems.daos;

import java.util.List;

import systems.domains.BoardVO;

public interface BoardDAO {
	public List<BoardVO> boardList(BoardVO vo);//관리자게시판 글 리스트 불러오기
	
	public int boardDelete(BoardVO vo);//관리자게시판 글 삭제
	
	public List<BoardVO> boardTotal(BoardVO vo);//관리자페이지 통계 게시판 글 총수
	
	public List<BoardVO> boardToday(BoardVO vo);//관리자페이지 통계 계시판 오늘 글 수
	
	public int boardHide(BoardVO vo);//관리자게시판 글 숨기기 기능
	public int boardShow(BoardVO vo);//관리자게시판 글 나타내기 기능
	
	public BoardVO boardContent(BoardVO vo) ;//관리자게시판 게시글관리 - 글내용 뷰페이지
}
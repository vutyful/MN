package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.BoardVO;

@Repository("BoardDAO")
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<BoardVO> boardList(BoardVO vo) {
//		System.out.println("===> Mybatis boardList() 호출");
		return mybatis.selectList("BoardMap.boardList", vo);
	}//게시판 리스트 불러오기
	
	public int boardDelete(BoardVO vo) {
//		System.out.println("===> Mybatis boardDelete() 호출");
		return mybatis.delete("BoardMap.boardDelete", vo);
	}//관리자게시판 글 삭제
	
	public List<BoardVO> boardTotal(BoardVO vo) {
//		System.out.println("===> Mybatis boardTotal() 호출");
		return mybatis.selectList("BoardMap.boardTotal", vo);
	}//관리자페이지 통계 게시판 글 총수
	
	
	public List<BoardVO> boardToday(BoardVO vo) {
//		System.out.println("===> Mybatis boardToday() 호출");
		return mybatis.selectList("BoardMap.boardToday", vo);
	}//관리자페이지 통계 계시판 오늘 글 수
	
	
	public int boardHide(BoardVO vo) {
		return mybatis.update("BoardMap.boardHide" , vo);
	}//관리자게시판 글 숨기기버튼
	
	public int boardShow(BoardVO vo) {
		return mybatis.update("BoardMap.boardShow" , vo);
	}//관리자게시판 글 나타내기버튼

	public BoardVO boardContent(BoardVO vo) {
		return mybatis.selectOne("BoardMap.boardContent" , vo);
		
	};//관리자게시판 게시글관리 - 글내용 뷰페이지
	
}

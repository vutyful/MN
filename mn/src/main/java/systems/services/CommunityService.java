package systems.services;

import java.util.List;

import systems.domains.BoardVO;

public interface CommunityService{

	//게시판 등록
	public void CommunityInsert(BoardVO vo);
	
	//게시판 목록 보기
	public List<BoardVO> getBoardList();
	
}


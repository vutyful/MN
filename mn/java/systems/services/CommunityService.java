package systems.services;

import java.util.List;
import java.util.Map;

import systems.domains.BoardVO;

public interface CommunityService{

	//게시판 등록
	public void CommunityInsert(BoardVO vo);
	
	//게시판 목록 보기
	public List<BoardVO> getBoardList();
	
	//게시판 상세페이지 
	
	List<Map> boardDetail(int bo_num) throws Exception;
	
}


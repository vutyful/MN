package systems.services;

import java.util.List;

import systems.domains.CommunityVO;

public interface CommunityService{

	//게시판 등록
	public void CommunityInsert(CommunityVO vo);
	
	//게시판 목록 보기
	public List<CommunityVO> getBoardList();
	
}


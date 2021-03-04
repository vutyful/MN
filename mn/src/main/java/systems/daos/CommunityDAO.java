package systems.daos;

import java.util.List;

import systems.domains.CommunityVO;

public interface CommunityDAO {
	
	public void CommunityInsert(CommunityVO vo);
	
	//게시판 리스트 불러오기
	public List<CommunityVO> getBoardList();
	
	
}

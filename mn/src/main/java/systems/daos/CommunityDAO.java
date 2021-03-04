package systems.daos;

import java.util.List;

import systems.domains.BoardVO;

public interface CommunityDAO {
	
	public void CommunityInsert(BoardVO vo);
	
	//게시판 리스트 불러오기
	public List<BoardVO> getBoardList();
	
	
}

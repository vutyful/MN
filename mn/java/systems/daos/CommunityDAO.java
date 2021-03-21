package systems.daos;

import java.util.List;
import java.util.Map;

import systems.domains.BoardVO;

public interface CommunityDAO {
	
	public void CommunityInsert(BoardVO vo);
	
	//게시판 리스트 불러오기
	public List<BoardVO> getBoardList();
	
	//게시판 상세페이지
	
	List<Map> boardDetail(int bo_num); 


	
}

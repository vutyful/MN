package systems.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import systems.domains.BoardVO;
import systems.domains.ReplyVO;

public interface CommunityDAO {
	
	public void CommunityInsert(BoardVO vo);
	
	//게시판 리스트 불러오기
	public List<BoardVO> getBoardList();
	
	//게시판 상세페이지
	
	List<Map> boardDetail(int bo_num); 

	
	//댓글 등록 

	public int createReply(ReplyVO replyVO);

	//댓글 목록
	public List<HashMap<String, Object>> getReplyList(int bo_num);
	
	//댓글 삭제
	public void delReply(int re_num);
	
}

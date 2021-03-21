package systems.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import systems.domains.BoardVO;
import systems.domains.ReplyVO;

public interface CommunityService{

	//게시판 등록
	public void CommunityInsert(BoardVO vo);
	
	//게시판 목록 보기
	public List<HashMap<String,Object>> getBoardList();
	
	//게시판 상세페이지 
	
	List<Map> boardDetail(int bo_num) throws Exception;
	
	//게시글 수정
	public BoardVO selectReply(BoardVO vo);
	//게시글 수정 등록
	public int commuUpate(BoardVO vo, int bo_num);
		
	//댓글 등록
	public int createReply(ReplyVO replyVO);
	
	//댓글 목록 보기
	public List<HashMap<String, Object>> getReplyList(int bo_num);
	
	//댓글 삭제
	public int delReply(int re_num);

	/*
	 * //현재 댓글 시퀀스 가져오기 public String getReCurrval();
	 */
	
}


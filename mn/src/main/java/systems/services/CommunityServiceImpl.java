package systems.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.CommunityDAO;
import systems.domains.BoardVO;
import systems.domains.ReplyVO;

@Service
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	private CommunityDAO CommunityDAO;
	
	//게시판등록
	@Override
	public void CommunityInsert(BoardVO vo) {
		CommunityDAO.CommunityInsert(vo);
		
	}
	//게시판 목록 보기
	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("getBoardList 게시판목록 CommunityServiceImpl");
		return CommunityDAO.getBoardList();
	}
	//게시판 상세보기
	@Override
	public List<Map> boardDetail(int bo_num) throws Exception{
		System.out.println("boardDetail 상세페이지목록 CommunityServiceImpl");
		return CommunityDAO.boardDetail(bo_num);
	}
	
	//댓글
	//댓글 등록
	@Override
	public int createReply(ReplyVO replyVO) {
		System.out.println("createReply 댓글등록ServiceImpl");
		return CommunityDAO.createReply(replyVO);
	}
	//댓글 목록
	public List<HashMap<String, Object>> getReplyList(int bo_num) {
		System.out.println("getReplyList 댓글목록 ServiceImpl");
		return CommunityDAO.getReplyList(bo_num);
	}
	
	//댓글 삭제
	@Override
	public void delReply(int re_num) {
		System.out.println("delReply 댓글삭제 ServiceImpl");
		CommunityDAO.delReply(re_num);
		
	}

}

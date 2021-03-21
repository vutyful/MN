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
	public List<HashMap<String, Object>> getBoardList() {
		System.out.println("getBoardList 게시판목록 CommunityServiceImpl");
		return CommunityDAO.getBoardList();
	}
	//게시판 상세보기
	@Override
	public List<Map> boardDetail(int bo_num) throws Exception{
		System.out.println("boardDetail 상세페이지목록 CommunityServiceImpl");
		return CommunityDAO.boardDetail(bo_num);
	}
	
	//게시글 수정
	//1)게시글 수정 select로 원본을 받아온다.
	@Override
	public BoardVO selectReply(BoardVO vo) {
		System.out.println("selectReply 게시글 수정 ServiceImpl");
		/* BoardVO result = CommunityDAO.updateReply(vo); */
		return CommunityDAO.selectReply(vo);
		
	}
	
	//게시글 수정등록
	@Override
	public int commuUpate(BoardVO vo, int bo_num) {
		System.out.println("commuUpate 수정 완료 ServiceImpl");
		return CommunityDAO.commuUpdate(vo, bo_num);
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
	public int delReply(int re_num) {
		System.out.println("delReply 댓글삭제 ServiceImpl");
		return CommunityDAO.delReply(re_num);
		
	}

}

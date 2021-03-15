package systems.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.plaf.synth.SynthOptionPaneUI;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.BoardVO;
import systems.domains.ReplyVO;

@Repository
public class CommunityDAOImpl implements CommunityDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//게시판 등록
	@Override
	public void CommunityInsert(BoardVO vo) {
		System.out.println("mybatis CommunityInsert 호출");
		mybatis.insert("CommuMap.CommunityInsert", vo);   //mapper안에 있는 특정 select, insert,등등 아이디 값을 부름
		
	}
	//게시판 목록 
	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("mybatis getBoardList 호출");
		return mybatis.selectList("CommuMap.getBoardList");
	}
	
	//게시판 상세페이지
	@Override
	public List<Map> boardDetail(int bo_num) {
		System.out.println("mybatis boardDetail 호출");
		return mybatis.selectList("CommuMap.boardDetail",bo_num);
	}
	
	//댓글 등록 페이지
	//댓글 등록
	@Override
	public int createReply(ReplyVO replyVO) {
		System.out.println(replyVO.getBo_num());
		System.out.println(replyVO.getMem_num());
		System.out.println(replyVO.getRe_content());
		System.out.println("mybatis createReply 호출");
		
		return mybatis.insert("CommuMap.createReply", replyVO);
		
	}
	//댓글 목록
	@Override
	public List<HashMap<String, Object>> getReplyList(int bo_num) {
		System.out.println("mybatis getReplyList 호출");
		
		List<HashMap<String, Object>> list = mybatis.selectList("CommuMap.getReplyList",bo_num);
		System.out.println(bo_num);
		System.out.println(list.get(0).get("MEM_NAME"));
		System.out.println(list.size());
		System.out.println(list.get(0));
		return list; 
	}
	//댓글 삭제
	@Override
	public void delReply(int re_num) {
		mybatis.delete("CommuMap.delReply", re_num);
		System.out.println("mybatis delReply 호출");
	}

	
	
	
}

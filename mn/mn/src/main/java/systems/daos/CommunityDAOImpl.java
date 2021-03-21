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
	public List<HashMap<String, Object>> getBoardList(){
	
		System.out.println("mybatis getBoardList 호출");
		return mybatis.selectList("CommuMap.getBoardList");
	}
	
	//게시판 상세페이지
	@Override
	public List<Map> boardDetail(int bo_num) {
		System.out.println("mybatis boardDetail 호출");
		return mybatis.selectList("CommuMap.boardDetail",bo_num);
	}
	
	//1)게시글 수정 select로 원본을 받아온다.
	@Override
	public BoardVO selectReply(BoardVO vo) {
		System.out.println("mybatis selectReply 호출");
		System.out.println(vo.getBo_num());
		return mybatis.selectOne("CommuMap.selectReply",vo);
		
	}
	
	//게시판 수정완료
	@Override
	public int commuUpdate(BoardVO vo, int bo_num) {
		System.out.println("mybatis commuUpdate 호출");
		System.out.println("다오임플"+vo.getBo_title());
		System.out.println("다오임플 게시판번호"+ vo.getBo_num());
		return mybatis.update("CommuMap.commuUpdate",vo);
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
		return list; 
	}
	//댓글 삭제
	@Override
	public int delReply(int re_num) {
		int delresult = mybatis.delete("CommuMap.delReply", re_num);
		System.out.println("mybatis delReply 호출");
		return delresult;
	}
	

	
}

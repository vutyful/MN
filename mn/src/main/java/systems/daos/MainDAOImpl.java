package systems.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.AdVO;
import systems.domains.ContentReplyVO;
import systems.domains.ContentVO;
import systems.domains.MemberVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	//정보글 등록하기
	public void wirteInfo(ContentVO vo) {
		mybatis.insert("MainMap.writeInfo", vo);
	}

	//정보글 랜덤하게 10개 가져오기
	public List<ContentVO> getAllContent() {
		return mybatis.selectList("MainMap.getAllContent");
	}

	// con_id 이용하여 컨텐츠 정보 가져오기(컨텐츠 상세)
	public ContentVO getOneContent(int con_num) {
		return mybatis.selectOne("MainMap.getOneContent", con_num);
	}

	// con_cate 이용하여 해당 카테고리의 컨텐츠 가져오기
	public List<ContentVO> getCateContent(String con_cate,int firstRow,int endRow) {
		HashMap map = new HashMap();
		map.put("con_cate", con_cate);
		map.put("firstRow", firstRow);
		map.put("endRow", endRow);
		
		return mybatis.selectList("MainMap.getCateContent", map);
	}

	//keyword 포함하는 컨텐츠 전부 가져오기
	public List<ContentVO> searchAll(String keyword) {
		return mybatis.selectList("MainMap.searchAll", keyword);
	}

	//mem_num에 해당하는 북마크 업데이트
	public void updateBookmark(String mem_num, String bm) {
		System.out.println("북마크 업데이트 dao");
		HashMap map = new HashMap();
		map.put("mem_num",mem_num);
		map.put("bm", bm);
		mybatis.update("MainMap.updateBookmark", map);
	}

	//mem_num으로 북마크 가져오기
	public String getBookmark(String mem_num) {
		return mybatis.selectOne("MainMap.getBookmark", mem_num);
	}

	//댓글 등록하기
	public void insertReply(ContentReplyVO vo) {
		mybatis.insert("MainMap.insertReply", vo);
	}
	
	// mem_num으로 가장 최근 쓴 댓글 정보 가져오기
	public ContentReplyVO currentReply(String mem_num) {
		return mybatis.selectOne("MainMap.currentReply", mem_num);
	}
	
	//con_num에 해당하는 댓글 리스트 가져오기
	public List<Map<String, String>> getReplyList(int con_num) {
		return mybatis.selectList("MainMap.getReplyList", con_num);
	}

	//con_num에 해당하는 컨텐츠 조회수 1 올리기
	public void addViewCount(int con_num) {
		mybatis.update("MainMap.addViewCount", con_num);
	}

	//조회수 많은 순으로 3개 정보글 얻어오기
	public List<ContentVO> getpopular() {
		return mybatis.selectList("MainMap.getpopular");
	}

	// 최신글 3개 가져오기 
	public List<ContentVO> getLatest() {
		return mybatis.selectList("MainMap.getLatest");
	}

	//넘어온 re_content와 re_num으로 해당 댓글 내용 업데이트
	public void replyupdate(ContentReplyVO vo) {
		mybatis.update("MainMap.replyupdate", vo);
	}

	//넘어온 re_num 댓글 삭제
	public void replydelete(ContentReplyVO vo) {
		mybatis.delete("MainMap.replydelete", vo);
	}

	//con_num에 해당하는 컨텐츠 수정하기
	public void updateContent(ContentVO vo) {
		mybatis.update("MainMap.updateContent", vo);
	}

	//광고 가져오기
	public List<AdVO> getAllAD() {
		return mybatis.selectList("MainMap.getAllAD");
	}

	// 해당 카테고리의 전체 레코드 수 얻어오기
	public int totalCateRec(String con_cate) {
		return mybatis.selectOne("MainMap.totalCateRec", con_cate);
	}

	// 네이버로 로그인 시 회원 정보 입력
	public void naverRegist(MemberVO vo) {
		mybatis.insert("MainMap.naverRegist", vo);
	}

	//mem_num으로 회원정보 가져오기
	public MemberVO getMember(String mem_num) {
		return mybatis.selectOne("MainMap.getMember", mem_num);
	}

	// 네이버 로그인 정보 저장 직후 현재 seq_mem 얻어오기
	public String getNowSeq() {
		return mybatis.selectOne("MainMap.getNowSeq");
	}

	// 네이버 로그인 시 회원가입 여부 확인
	public Object naverCheck(String mem_email) {
		return mybatis.selectOne("MainMap.naverCheck", mem_email);
	}
	

	
	
	
	
}

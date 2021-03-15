package systems.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public List<ContentVO> getCateContent(String con_cate) {
		return mybatis.selectList("MainMap.getCateContent", con_cate);
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



	
	
	
	
}

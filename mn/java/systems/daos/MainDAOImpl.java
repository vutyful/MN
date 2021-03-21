package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.ContentVO;

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
	
	
}

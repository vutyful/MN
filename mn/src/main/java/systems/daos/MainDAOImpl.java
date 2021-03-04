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
	public ContentVO getOneContent(int con_id) {
		return mybatis.selectOne("MainMap.getOneContent", con_id);
	}
}

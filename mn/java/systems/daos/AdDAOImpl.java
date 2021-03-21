package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.AdVO;

@Repository("AdDAO")
public class AdDAOImpl implements AdDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<AdVO> adList(AdVO vo){
		return mybatis.selectList("AdMap.adList", vo);
		
	};//관리자 광고게시판 리스트 불러오기

}

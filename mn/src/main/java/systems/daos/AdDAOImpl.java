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
		
	};//관리자 광고게시판 리스트 열람
	
	public int adDelete(AdVO vo) {
		return mybatis.delete("AdMap.adDelete",vo);
	}//관리자 광고게시판 삭제
	
	public int adInsertConfirm(AdVO vo) {
		return mybatis.insert("AdMap.adInsertConfirm",vo);
		
	};//관리자 광고 글 등록.
}

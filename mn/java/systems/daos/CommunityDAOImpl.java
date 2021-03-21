package systems.daos;

import java.util.List;
import java.util.Map;

import javax.swing.plaf.synth.SynthOptionPaneUI;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.BoardVO;

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

}

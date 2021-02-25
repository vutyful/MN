package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.BoardVO;

@Repository("BoardDAO")
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<BoardVO> boardList(BoardVO vo) {
		System.out.println("===> Mybatis boardList() 호출");
		return mybatis.selectList("BoardDAO.boardList", vo);
	}//게시판 리스트 불러오기

}

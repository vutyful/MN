package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.BoardDAOImpl;
import systems.domains.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAOImpl boardDAO;
	
	@Override
	public List<BoardVO> boardList(BoardVO vo) {

		return boardDAO.boardList(vo);
	}//게시판 리스트 불러오기

}

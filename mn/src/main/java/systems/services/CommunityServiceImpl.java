package systems.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.CommunityDAO;
import systems.domains.BoardVO;

@Service
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	private CommunityDAO CommunityDAO;
	
	//게시판등록
	@Override
	public void CommunityInsert(BoardVO vo) {
		CommunityDAO.CommunityInsert(vo);
		
	}
	//게시판 목록 보기
	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("getBoardList 게시판목록 CommunityServiceImpl");
		return CommunityDAO.getBoardList();
	}
	//게시판 상세보기
	@Override
	public List<Map> boardDetail(int bo_num) throws Exception{
		System.out.println("boardDetail 상세페이지목록 CommunityServiceImpl");
		return CommunityDAO.boardDetail(bo_num);
	}

}

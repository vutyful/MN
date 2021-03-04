package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.CommunityDAO;
import systems.domains.CommunityVO;

@Service
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	private CommunityDAO CommunityDAO;
	
	//게시판등록
	@Override
	public void CommunityInsert(CommunityVO vo) {
		CommunityDAO.CommunityInsert(vo);
		
	}
	//게시판 목록 보기
	@Override
	public List<CommunityVO> getBoardList() {
		System.out.println("getBoardList 호출가능??");
		return CommunityDAO.getBoardList();
	}

}

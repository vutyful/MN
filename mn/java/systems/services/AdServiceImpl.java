package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.AdDAOImpl;
import systems.domains.AdVO;
@Service
public class AdServiceImpl implements AdService{
	
	@Autowired
	private AdDAOImpl adDAO;
	

	public List<AdVO> adList(AdVO vo){
		return adDAO.adList(vo);
	};//관리자 광고게시판 리스트 불러오기
}

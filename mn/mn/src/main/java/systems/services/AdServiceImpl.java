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
	
	//
	public int adDelete(AdVO vo) {
		return adDAO.adDelete(vo);
	};//관리자 광고 글 삭제
	
	public int adInsertConfirm(AdVO vo) {
		
		return adDAO.adInsertConfirm(vo);
	};//관리자 광고 글 등록.
	
	 public AdVO adContent(AdVO vo) {
		 
		 return adDAO.adContent(vo);
	 };//광고 열람.
	 
	 public int adModify(AdVO vo) {
		 return adDAO.adModify(vo);
	 };//광고 수정
	 
	 public List<AdVO> adRevenue(AdVO vo){
		 return adDAO.adRevenue(vo);
	 };//광고수익 그래프.
	
}

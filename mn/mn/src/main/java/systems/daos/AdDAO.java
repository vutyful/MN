package systems.daos;

import java.util.List;

import systems.domains.AdVO;

public interface AdDAO {
	public List<AdVO> adList(AdVO vo);//관리자 광고게시판 리스트 불러오기

	public int adDelete(AdVO vo);//광고글 삭제
	
	public int adInsertConfirm(AdVO vo);//관리자 광고 글 등록.
	
	public AdVO adContent(AdVO vo);//관리자 광고 열람.
	
	public int adModify(AdVO vo);//관리자 광고 수정.
	
	public List<AdVO> adRevenue(AdVO vo); //광고수익 그래프
	
}

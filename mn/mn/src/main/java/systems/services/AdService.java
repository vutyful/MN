package systems.services;

import java.util.List;

import systems.domains.AdVO;

public interface AdService {
	 List<AdVO> adList(AdVO vo);//관리자 광고게시판 리스트 불러오기
	 
	 int adDelete(AdVO vo);//관리자 광고 글 삭제
	 
	 int adInsertConfirm(AdVO vo);//관리자 광고 글 등록.
	 
	 AdVO adContent(AdVO vo);//광고 열람.

	 int adModify(AdVO vo);//광고 수정
	 
	 List<AdVO> adRevenue(AdVO vo);//광고수익 그래프.
}

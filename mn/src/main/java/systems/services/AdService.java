package systems.services;

import java.util.List;

import systems.domains.AdVO;
import systems.domains.BoardVO;

public interface AdService {
	 List<AdVO> adList(AdVO vo);//관리자 광고게시판 리스트 불러오기
	 
	 int adDelete(AdVO vo);//관리자 광고 글 삭제
	 
	 int adInsertConfirm(AdVO vo);//관리자 광고 글 등록.
	 
}

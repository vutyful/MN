package systems.services;

import java.util.List;

import systems.domains.AdVO;

public interface AdService {
	 List<AdVO> adList(AdVO vo);//관리자 광고게시판 리스트 불러오기
}

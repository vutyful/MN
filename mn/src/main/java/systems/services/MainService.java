package systems.services;

import java.util.List;

import systems.domains.ContentVO;
import systems.domains.MemberVO;

public interface MainService {
	
	//정보글 등록하기
	public void writeInfo(ContentVO vo);
	
	//정보글 랜덤하게 10개 가져오기
	public List<ContentVO> getAllContent();
	
	// con_num 이용하여 컨텐츠 정보 가져오기(컨텐츠 상세)
	public ContentVO getOneContent(int con_id);
	
	// con_cate 이용하여 해당 카테고리의 컨텐츠 가져오기
	public List<ContentVO> getCateContent(String con_cate);
	
	//keyword 포함하는 컨텐츠 전부 가져오기
	public List<ContentVO> searchAll(String keyword);
	
	//mem_num으로 북마크 가져오기
	public String getBookmark(int mem_num);
	
	//mem_num에 해당하는 북마크 업데이트
	public void updateBookmark(int mem_num,String bm);
	
	//북마크 순으로 인기글 3개 가져오기
	
	// 최신글 3개 가져오기 (같은 날짜에 3개이상이라면 랜덤으로)
	
	//광고 가져오기
	
	
}

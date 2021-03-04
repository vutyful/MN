package systems.services;

import java.util.List;

import systems.domains.ContentVO;

public interface MainService {
	
	//정보글 등록하기
	public void writeInfo(ContentVO vo);
	
	//정보글 랜덤하게 10개 가져오기
	public List<ContentVO> getAllContent();
	
	// con_id 이용하여 컨텐츠 정보 가져오기(컨텐츠 상세)
	public ContentVO getOneContent(int con_id);
	
	//커뮤니티 글 3개 가져오기(어떤 기준일지는 추후에 정하기)
	
	//광고 가져오기
	
	
}

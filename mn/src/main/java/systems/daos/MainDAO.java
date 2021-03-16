package systems.daos;

import java.util.List;
import java.util.Map;

import systems.domains.AdVO;
import systems.domains.ContentReplyVO;
import systems.domains.ContentVO;
import systems.domains.MemberVO;

public interface MainDAO {
	
	//정보글 등록하기
	public void wirteInfo(ContentVO vo);
	
	//정보글 랜덤하게 10개 가져오기
	public List<ContentVO> getAllContent();
	
	// con_id 이용하여 컨텐츠 정보 가져오기(컨텐츠 상세)
	public ContentVO getOneContent(int con_id);
	
	// con_cate 이용하여 해당 카테고리의 컨텐츠 가져오기
	public List<ContentVO> getCateContent(String con_cate);
	
	//keyword 포함하는 컨텐츠 전부 가져오기
	public List<ContentVO> searchAll(String keyword);
	
	//mem_num으로 북마크 가져오기
	public String getBookmark(String mem_num);
	
	//mem_num에 해당하는 북마크 업데이트
	public void updateBookmark(String mem_num,String bm);
	
	//댓글 등록하기
	public void insertReply(ContentReplyVO vo);
	
	// mem_num으로 가장 최근 쓴 댓글 정보 가져오기
	public ContentReplyVO currentReply(String mem_num);
	
	//con_num에 해당하는 댓글 리스트 가져오기
	public List<Map<String, String>> getReplyList(int con_num);
	
	//con_num에 해당하는 컨텐츠 조회수 1 올리기
	public void addViewCount(int con_num);
	
	//조회수 많은 순으로 3개 정보글 얻어오기
	public List<ContentVO> getpopular();
		
	// 최신글 3개 가져오기 
	public List<ContentVO> getLatest();
	
	//넘어온 re_content와 re_num으로 해당 댓글 내용 업데이트
	public void replyupdate(ContentReplyVO vo);
	
	//넘어온 re_num 댓글 삭제
	public void replydelete(ContentReplyVO vo);
	
	//con_num에 해당하는 컨텐츠 수정하기
	public void updateContent(ContentVO vo);
	
	// 광고 가져오기
	public List<AdVO> getAllAD();
	
}

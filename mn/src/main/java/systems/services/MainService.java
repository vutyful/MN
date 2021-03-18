package systems.services;

import java.util.List;
import java.util.Map;

import systems.domains.AdVO;
import systems.domains.ContentReplyVO;
import systems.domains.ContentVO;
import systems.domains.MemberVO;

public interface MainService {
	
	//정보글 등록하기
	public void writeInfo(ContentVO vo);
	
	//정보글 랜덤하게 10개 가져오기
	public List<ContentVO> getAllContent();
	
	// con_num 이용하여 컨텐츠 정보 가져오기(컨텐츠 상세)
	public ContentVO getOneContent(int con_id);
	
	// con_cate,pageNo 이용하여 해당 카테고리, 해당 페이지의 레코드 9개 가져오기
	public List<ContentVO> getCateContent(String con_cate,int pageNo);
	
	// con_cate 이용하여 해당 카테고리의 총 페이지 갯수 구하기
	public int getTotalPage(String con_cate);
	
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
	
	// 네이버로 로그인 시 회원 정보 입력
	public void naverRegist(MemberVO vo);
	
	//mem_num으로 회원정보 가져오기
	public MemberVO getMember(String mem_num);
	
	// 네이버 로그인 정보 저장 직후 현재 seq_mem 얻어오기
	public String getNowSeq();
	
	// 네이버 로그인 시 회원가입 여부 확인
	public Object naverCheck(String mem_email);
}

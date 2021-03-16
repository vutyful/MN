package systems.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.MainDAOImpl;
import systems.domains.AdVO;
import systems.domains.ContentReplyVO;
import systems.domains.ContentVO;
import systems.domains.MemberVO;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDAOImpl mainDAO;
	
	//정보글 등록하기
	public void writeInfo(ContentVO vo) {
		mainDAO.wirteInfo(vo);
		
	}

	//정보글 랜덤하게 10개 가져오기
	public List<ContentVO> getAllContent() {
		return mainDAO.getAllContent();
	}

	// con_num 이용하여 컨텐츠 정보 가져오기(컨텐츠 상세)
	public ContentVO getOneContent(int con_num) {
		return mainDAO.getOneContent(con_num);
	}

	// con_cate 이용하여 해당 카테고리의 컨텐츠 가져오기
	public List<ContentVO> getCateContent(String con_cate) {
		return mainDAO.getCateContent(con_cate);
	}

	//keyword 포함하는 컨텐츠 전부 가져오기
	public List<ContentVO> searchAll(String keyword) {
		return mainDAO.searchAll(keyword);
	}

	//mem_num에 해당하는 북마크 업데이트
	public void updateBookmark(String mem_num, String bm) {
		mainDAO.updateBookmark(mem_num, bm);
	}

	//mem_num으로 북마크 가져오기
	public String getBookmark(String mem_num) {
		return mainDAO.getBookmark(mem_num);
	}

	//댓글 등록하기
	public void insertReply(ContentReplyVO vo) {
		mainDAO.insertReply(vo);
	}

	//con_num에 해당하는 댓글 리스트 가져오기
	public List<Map<String, String>> getReplyList(int con_num) {
		return mainDAO.getReplyList(con_num);
	}

	// mem_num으로 가장 최근 쓴 댓글 정보 가져오기
	public ContentReplyVO currentReply(String mem_num) {
		return mainDAO.currentReply(mem_num);
	}

	//con_num에 해당하는 컨텐츠 조회수 1 올리기
	public void addViewCount(int con_num) {
		mainDAO.addViewCount(con_num);
	}

	//조회수 많은 순으로 3개 정보글 얻어오기
	public List<ContentVO> getpopular() {
		return mainDAO.getpopular();
	}

	// 최신글 3개 가져오기 
	public List<ContentVO> getLatest() {
		return mainDAO.getLatest();
	}

	//넘어온 re_content와 re_num으로 해당 댓글 내용 업데이트
	public void replyupdate(ContentReplyVO vo) {
		mainDAO.replyupdate(vo);
	}

	//넘어온 re_num 댓글 삭제
	public void replydelete(ContentReplyVO vo) {
		mainDAO.replydelete(vo);
	}

	//con_num에 해당하는 컨텐츠 수정하기
	public void updateContent(ContentVO vo) {
		mainDAO.updateContent(vo);
	}

	//광고 가져오기
	public List<AdVO> getAllAD() {
		return mainDAO.getAllAD();
	}
	
	//최신순으로 3개 정보글 얻어오기
	
	

}

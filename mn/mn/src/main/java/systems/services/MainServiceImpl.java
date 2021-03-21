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
	
	private int totalRecCount;		// 전체 레코드 수
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 9;	// 한페이지당 레코드 수
	
	/** con_cate 이용하여 해당 카테고리의 총 페이지 갯수 구하기*/
	public int getTotalPage(String con_cate) {
		totalRecCount = mainDAO.totalCateRec(con_cate);
		// 한 페이지에 3개씩 메세지 출력, 페이지 갯수 계산
				/*
				totalRecCount 	pageTotalCount
				*  			 9 - 3
				* 			10 - 4
							11 - 4
							12 - 4
							13 - 5
				* */
		pageTotalCount = totalRecCount/countPerPage;
		if(totalRecCount % countPerPage !=0) {
			pageTotalCount++;
		}
		return pageTotalCount;
	}
	
	/** con_cate,pageNo 이용하여 해당 카테고리, 해당 페이지의 레코드 9개 가져오기*/
	public List<ContentVO> getCateContent(String con_cate,int pageNo) {
		/*
		pageNo(페이지번호) 	(firstRow)시작레코드번호  	(endRow)끝레코드번호
				1					1					9
				2					10					18
				3					19					27
				4					28					37
		*/
		int firstRow = (pageNo-1) * countPerPage + 1;
		int endRow = pageNo * countPerPage;
		
		System.out.println("시작:"+firstRow+"끝:"+endRow);
		
		return mainDAO.getCateContent(con_cate,firstRow,endRow);
	}
	
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

	// 네이버로 로그인 시 회원 정보 입력
	public void naverRegist(MemberVO vo) {
		mainDAO.naverRegist(vo);
		
	}

	//mem_num으로 회원정보 가져오기
	public MemberVO getMember(String mem_num) {
		return mainDAO.getMember(mem_num);
	}

	// 네이버 로그인 정보 저장 직후 현재 seq_mem 얻어오기
	public String getNowSeq() {
		return mainDAO.getNowSeq();
	}

	// 네이버 로그인 시 회원가입 여부 확인
	public Object naverCheck(String mem_email) {
		return mainDAO.naverCheck(mem_email);
	}

	
	//최신순으로 3개 정보글 얻어오기
	
	

}

package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.MainDAOImpl;
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
	public void updateBookmark(int mem_num, String bm) {
		mainDAO.updateBookmark(mem_num, bm);
	}

	//mem_num으로 북마크 가져오기
	public String getBookmark(int mem_num) {
		return mainDAO.getBookmark(mem_num);
	}
	

}

package systems.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.ContentDAO;
import systems.domains.ContentVO;

@Service
public class ContentsServiceImpl implements ContentsService {
	@Autowired
	private ContentDAO contentDAO;

	@Override
	public List<Map> getContentsList() {
		System.out.println("Service : getContentsList");
		return contentDAO.getContentsList();
	}

	@Override
	public ContentVO getContent(ContentVO vo) {
		System.out.println("Service : getContent");
		return contentDAO.getContent(vo);
	}

	@Override
	public void modifyContent(ContentVO vo) {
		System.out.println("Service : modifyContent");
		contentDAO.modifyContent(vo);
	}

	@Override
	public void deleteContent(ContentVO vo) {
		System.out.println("Service : deleteContent");
		contentDAO.deleteContent(vo);
	}

	@Override
	public List<String> getCategoryList() {
		System.out.println("Service : getCategoryList");
		return contentDAO.getCategoryList();
	}
	
}

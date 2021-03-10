package project.simsim.systems.services;

import java.util.List;
import java.util.Map;

import project.simsim.systems.domains.ContentVO;

public interface ManageContentsService {
	void saveContent(ContentVO vo); 
	void modifyContent(ContentVO vo);
	void deleteContent(ContentVO vo);
	ContentVO getContent(ContentVO vo);
	List<Map> getContentsList();
	List<String> getCategoryList();
}

package systems.services;

import java.util.List;
import java.util.Map;

import systems.domains.ContentVO;

public interface ContentsService {
	void modifyContent(ContentVO vo);
	void deleteContent(ContentVO vo);
	ContentVO getContent(ContentVO vo);
	List<Map> getContentsList();
	List<String> getCategoryList();
}

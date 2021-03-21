package systems.daos;

import java.util.List;
import java.util.Map;

import systems.domains.ContentVO;

public interface ContentDAO {
	public void modifyContent(ContentVO vo);
	public void deleteContent(ContentVO vo);
	public ContentVO getContent(ContentVO vo);
	public List<Map> getContentsList();
	public List<String> getCategoryList();
}

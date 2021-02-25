package systems.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.registVO;

@Repository("registDAO")
public class registDaoImpl implements registDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertComBoard(registVO vo){
		 System.out.println("다오임플");
		 System.out.println(vo.getBoardTitle());
		 System.out.println(vo.getEditorData());
		  mybatis.insert("RegistDAO.resister_Content", vo);
		
	}
	

}

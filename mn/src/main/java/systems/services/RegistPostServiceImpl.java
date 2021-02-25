package systems.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.registDAO;
import systems.daos.registDaoImpl;
import systems.domains.registVO;

@Service("RegistPostService")
public class RegistPostServiceImpl implements RegistPostService{

	@Autowired
	private registDaoImpl registDaoImpl;
	
	@Override
	public void insertComBoard(registVO vo) {
		System.out.println("서비스임플");
		registDaoImpl.insertComBoard(vo);
		
	}

	
	
}

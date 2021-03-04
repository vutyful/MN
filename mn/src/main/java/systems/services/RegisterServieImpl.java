package systems.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.RegisterDAO;
import systems.daos.RegisterDaoImpl;
import systems.domains.RegistVO;

@Service
public class RegisterServieImpl implements RegisterService {
	
	//회원가입
	@Autowired
	private RegisterDAO RegisterDaoImpl;

	@Override
	public int registerJoin(RegistVO vo) {
		return RegisterDaoImpl.registerJoin(vo);
	}

	//비밀번호 유효성검사
	@Override
	public RegistVO idCheck_Login(RegistVO vo) {
		return RegisterDaoImpl.idCheck_Login(vo);
	}

	//카카오톡 로그인
	@Override
	public int userInsertKaKao(RegistVO vo) {
		 return RegisterDaoImpl.userInsertKaKao(vo);
	}

	//일반회원 로그인
	@Override
	public RegistVO login(RegistVO vo) {
		
		return RegisterDaoImpl.login(vo);
	}
	
	

}

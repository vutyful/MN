package systems.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.RegisterDAO;
import systems.daos.RegisterDaoImpl;
import systems.domains.MemberVO;

@Service
public class RegisterServieImpl implements RegisterService {
	
	//회원가입
	@Autowired
	private RegisterDAO RegisterDaoImpl;

	@Override
	public int registerJoin(MemberVO vo) {
		return RegisterDaoImpl.registerJoin(vo);
	}

	//비밀번호 유효성검사
	@Override
	public MemberVO idCheck_Login(MemberVO vo) {
		return RegisterDaoImpl.idCheck_Login(vo);
	}

	//카카오톡 로그인
	@Override
	public int userInsertKaKao(MemberVO vo) {
		 return RegisterDaoImpl.userInsertKaKao(vo);
	}

	//일반회원 로그인
	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("login service");
		return RegisterDaoImpl.login(vo);
	}

	//아이디 중복수정
	@Override
	public MemberVO nickCheck(MemberVO vo) {
		System.out.println("아이디 중복확인s RegisterServieImpl ");
		return RegisterDaoImpl.nickCheck(vo);
	}
	
	//이메일 중복수정
	@Override
	public MemberVO emailCheck(MemberVO vo) {
		System.out.println("이메일 중복확인s RegisterServieImpl ");
		return RegisterDaoImpl.emailCheck(vo);
	}


	

}

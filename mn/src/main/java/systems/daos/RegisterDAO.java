package systems.daos;

import systems.domains.RegistVO;

public interface RegisterDAO {
	
	//회원가입
	public int registerJoin(RegistVO vo);

	//비밀번호 유효성검사
	public RegistVO idCheck_Login(RegistVO vo);

	//카카오톡 로그인
	public int userInsertKaKao(RegistVO vo);

	//일반회원 로그인
	public RegistVO login(RegistVO vo);

}

package systems.services;

import systems.domains.MemberVO;

public interface RegisterService {
	
	//회원가입
	public int registerJoin(MemberVO vo);

	//비밀번호 유효성
	public MemberVO idCheck_Login(MemberVO vo);

	//카카오톡 로그인
	public int userInsertKaKao(MemberVO vo);
	
	//일반회원 로그인
	public MemberVO login(MemberVO vo);
	
	/*
	 * //아이디 중복 체크 로그인 public int idCheck(MemberVO vo);
	 */

}

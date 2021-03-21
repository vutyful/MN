package systems.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.MemberVO;

@Repository
public class RegisterDaoImpl implements RegisterDAO {

	//회원가입
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int registerJoin(MemberVO vo) {
		System.out.println("mybatis RegisterDAO 호출");
		return mybatis.insert("RegisterMap.registerJoin", vo);
	}
	
	//비밀번호 유효성검사
	public MemberVO idCheck_Login(MemberVO vo) {
		System.out.println("mybatis idCheck 호출");
	      return mybatis.selectOne("RegisterMap.idCheck_Login", vo);
	}

	@Override
	public int userInsertKaKao(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsertKaKao() 호출");
		return mybatis.insert("user.userInsertKaKao", vo);
	}

	//일반로그인
	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("mybatis login 호출" + vo.getMem_email()+vo.getMem_pass());
		MemberVO result = mybatis.selectOne("RegisterMap.login",vo);
		System.out.println(result);
		return result;
	}

	/*
	 * //아이디(이메일) 중복체크
	 * 
	 * @Override public int idCheck(MemberVO vo) throws Exception { int result =
	 * mybatis.selectOne("RegisterMap.idCheck", vo); return result; }
	 */

	
	
	
}

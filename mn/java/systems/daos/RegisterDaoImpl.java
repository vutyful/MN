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

	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("mybatis login 호출" + vo.getMem_num());
		return mybatis.selectOne("RegisterMap.login",vo);
	}

}

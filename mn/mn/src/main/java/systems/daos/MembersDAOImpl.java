package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.MemberVO;

@Repository
public class MembersDAOImpl implements MembersDAO 
{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<MemberVO> getMembersList() {
		System.out.println("DAO : getMembersList");
		return mybatis.selectList("MembersMAP.getMembersList");
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		System.out.println("DAO : getMember");
		return (MemberVO)mybatis.selectOne("MembersMAP.getMember", vo);
	}

	@Override
	public void modifyMember(MemberVO vo) {
		System.out.println("DAO : modifyMember");
		mybatis.update("MembersMAP.modifyMember", vo);
	}

	@Override
	public List<MemberVO> getWithdrawalList() {
		System.out.println("DAO : getWithdrawalList");
		return mybatis.selectList("MembersMAP.getWithdrawalList");
	}

}

package project.simsim.systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.simsim.systems.domains.MemberVO;

@Repository
public class ManageMembersDAOImpl implements ManageMembersDAO 
{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<MemberVO> getMembersList() {
		System.out.println("DAO : getMembersList");
		return mybatis.selectList("ManageMembersMAP.getMembersList");
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		System.out.println("DAO : getMember");
		return (MemberVO)mybatis.selectOne("ManageMembersMAP.getMember", vo);
	}

	@Override
	public void modifyMember(MemberVO vo) {
		System.out.println("DAO : modifyMember");
		mybatis.update("ManageMembersMAP.modifyMember", vo);
	}

	@Override
	public List<MemberVO> getWithdrawalList() {
		System.out.println("DAO : getWithdrawalList");
		return mybatis.selectList("ManageMembersMAP.getWithdrawalList");
	}

}

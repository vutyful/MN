package project.simsim.systems.daos;

import java.util.List;

import project.simsim.systems.domains.MemberVO;

public interface ManageMembersDAO {
	public void modifyMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public List<MemberVO> getMembersList();
	public List<MemberVO> getWithdrawalList();
}

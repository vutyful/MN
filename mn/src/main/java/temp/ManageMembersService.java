package project.simsim.systems.services;

import java.util.List;

import project.simsim.systems.domains.MemberVO;

public interface ManageMembersService {
	void modifyMember(MemberVO vo);
	MemberVO getMember(MemberVO vo);
	List<MemberVO> getMembersList();
	List<MemberVO> getWithdrawalList();
}

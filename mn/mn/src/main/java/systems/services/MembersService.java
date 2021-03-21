package systems.services;

import java.util.List;

import systems.domains.MemberVO;

public interface MembersService {
	void modifyMember(MemberVO vo);
	MemberVO getMember(MemberVO vo);
	List<MemberVO> getMembersList();
	List<MemberVO> getWithdrawalList();
}

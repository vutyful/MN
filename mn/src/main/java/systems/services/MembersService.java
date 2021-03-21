package systems.services;

import java.util.List;

import systems.domains.MemberVO;

public interface MembersService {
	void modifyMember(MemberVO vo);
	MemberVO getMember(MemberVO vo);
	List<MemberVO> getMembersList();
	List<MemberVO> getWithdrawalList();
	
	
	List<MemberVO> memberTotal(MemberVO vo);// 관리자페이지 통계 총 회원수
	
}

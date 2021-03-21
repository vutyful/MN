package systems.daos;

import java.util.List;

import systems.domains.MemberVO;

public interface MembersDAO {
	public void modifyMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public List<MemberVO> getMembersList();
	public List<MemberVO> getWithdrawalList();
}

package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.MembersDAO;
import systems.domains.MemberVO;

@Service
public class MembersServiceImpl implements MembersService 
{
	@Autowired
	private MembersDAO MembersDAO;

	@Override
	public List<MemberVO> getMembersList() {
		System.out.println("Service : getMembersList");
		return MembersDAO.getMembersList();
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		System.out.println("Service : getMember");
		return MembersDAO.getMember(vo);
	}

	@Override
	public void modifyMember(MemberVO vo) {
		System.out.println("Service : modifyMember");
		MembersDAO.modifyMember(vo);
	}

	@Override
	public List<MemberVO> getWithdrawalList() {
		System.out.println("Service : getWithdrawalList");
		return MembersDAO.getWithdrawalList();
	}
	
}

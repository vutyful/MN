package project.simsim.systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.simsim.systems.daos.ManageMembersDAO;
import project.simsim.systems.domains.MemberVO;

@Service
public class ManageMembersServiceImpl implements ManageMembersService 
{
	@Autowired
	private ManageMembersDAO manageMembersDAO;

	@Override
	public List<MemberVO> getMembersList() {
		System.out.println("Service : getMembersList");
		return manageMembersDAO.getMembersList();
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		System.out.println("Service : getMember");
		return manageMembersDAO.getMember(vo);
	}

	@Override
	public void modifyMember(MemberVO vo) {
		System.out.println("Service : modifyMember");
		manageMembersDAO.modifyMember(vo);
	}

	@Override
	public List<MemberVO> getWithdrawalList() {
		System.out.println("Service : getWithdrawalList");
		return manageMembersDAO.getWithdrawalList();
	}
	
}

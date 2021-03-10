package project.simsim.systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.simsim.systems.domains.MemberVO;
import project.simsim.systems.services.ManageMembersService;

@Controller
public class ManageMembersController 
{
	@Autowired
	private ManageMembersService manageMembersService;
	
	@RequestMapping("manageMembers/{temp}.do")
	public String test(@PathVariable String temp)
	{
		return "/manageMembers/"+temp;
	}
	
	@RequestMapping("manageMembers/MembersList.do")
	public String getMembersList(Model model)
	{
		System.out.println("Controller : getMembersList");
		model.addAttribute("membersList", manageMembersService.getMembersList());
		return "manageMembers/list";
	}

	@RequestMapping("manageMembers/Withdrawals.do")
	public String getWithdrawalList(Model model)
	{
		System.out.println("Controller : getWithdrawalList");
		model.addAttribute("membersList", manageMembersService.getWithdrawalList());
		return "manageMembers/withdrawals";
	}
	
	@RequestMapping("manageMembers/view.do")
	public void view(MemberVO vo, Model model)
	{
		System.out.println("Controller : view");
		model.addAttribute("member", manageMembersService.getMember(vo));
	}
	
	@RequestMapping("manageMembers/modifyMember.do")
	public String modify(MemberVO vo)
	{
		System.out.println("Controller : modify");
		manageMembersService.modifyMember(vo);
		return "redirect:MembersList.do";
	}
}

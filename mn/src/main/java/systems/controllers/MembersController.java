package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.MemberVO;
import systems.services.MembersService;

@Controller
public class MembersController 
{
	@Autowired
	private MembersService MembersService;
	
	@RequestMapping("manageMembers/{temp}.do")
	public String test(@PathVariable String temp)
	{
		return "/manageMembers/"+temp;
	}
	
	@RequestMapping("manageMembers/MembersList.do")
	public String getMembersList(Model model)
	{
		System.out.println("Controller : getMembersList");
		model.addAttribute("membersList", MembersService.getMembersList());
		return "manageMembers/list";
	}

	@RequestMapping("manageMembers/Withdrawals.do")
	public String getWithdrawalList(Model model)
	{
		System.out.println("Controller : getWithdrawalList");
		model.addAttribute("membersList", MembersService.getWithdrawalList());
		return "manageMembers/withdrawals";
	}
	
	@RequestMapping("manageMembers/view.do")
	public void view(MemberVO vo, Model model)
	{
		System.out.println("Controller : view");
		model.addAttribute("member", MembersService.getMember(vo));
	}
	
	@RequestMapping("manageMembers/modifyMember.do")
	public String modify(MemberVO vo)
	{
		System.out.println("Controller : modify");
		MembersService.modifyMember(vo);
		return "redirect:MembersList.do";
	}
}

package systems.controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.ContentVO;
import systems.services.ContentsService;

@Controller
public class ContentsController 
{
	@Autowired
	private ContentsService ContentsService;
	
	@RequestMapping("manageContents/{temp}.do")
	public String test(@PathVariable String temp)
	{
		return "/manageContents/"+temp;
	}
	
	@RequestMapping("manageContents/ContentSave.do")
	public void callCategory(Model model)
	{
		List<String> cate = ContentsService.getCategoryList();
		if(cate.size()>0)
			cate.remove(0);
		model.addAttribute("list", cate);
	}
	
	@RequestMapping("manageContents/ContentsList.do")
	public String getContentsList(Model model)
	{
		System.out.println("Controller : getContentsList");
		model.addAttribute("contentsList", ContentsService.getContentsList());
		return "manager_extend/manageContents/list";
	}
	
	@RequestMapping("manageContents/view.do")
	public String view(ContentVO vo, Model model)
	{
		System.out.println("Controller : view");
		List<String> cate = ContentsService.getCategoryList();
		if(cate.get(0)==null)
			cate.remove(0);
		model.addAttribute("list", cate);
		model.addAttribute("content", ContentsService.getContent(vo));
		return "manager_extend/manageContents/view";
	}
	
	@RequestMapping("manageContents/modifyContent.do")
	public String modify(ContentVO vo)
	{
		System.out.println("Controller : modify");
		ContentsService.modifyContent(vo);
		return "redirect:ContentsList.do";
	}
	
	@RequestMapping("manageContents/deleteContent.do")
	public String delete(ContentVO vo)
	{
		System.out.println("Controller : delete");
		ContentsService.deleteContent(vo);
		return "redirect:ContentsList.do";
	}
}

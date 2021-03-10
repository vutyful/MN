package project.simsim.systems.controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.simsim.systems.domains.ContentVO;
import project.simsim.systems.services.ManageContentsService;

@Controller
public class ManageContentsController 
{
	@Autowired
	private ManageContentsService manageContentsService;
	
	@RequestMapping("manageContents/{temp}.do")
	public String test(@PathVariable String temp)
	{
		return "/manageContents/"+temp;
	}
	
	@RequestMapping("manageContents/ContentSave.do")
	public void callCategory(Model model)
	{
		List<String> cate = manageContentsService.getCategoryList();
		if(cate.size()>0)
			cate.remove(0);
		model.addAttribute("list", cate);
	}
	
	@RequestMapping("manageContents/saveContent.do")
	public String saveContent(ContentVO vo) throws IOException
	{
		System.out.println("Controller : saveContent");
		manageContentsService.saveContent(vo);
		return "redirect:ContentsList.do";
	}
	
	@RequestMapping("manageContents/ContentsList.do")
	public String getContentsList(Model model)
	{
		System.out.println("Controller : getContentsList");
		model.addAttribute("contentsList", manageContentsService.getContentsList());
		return "manageContents/list";
	}
	
	@RequestMapping("manageContents/view.do")
	public void view(ContentVO vo, Model model)
	{
		System.out.println("Controller : view");
		List<String> cate = manageContentsService.getCategoryList();
		if(cate.get(0)==null)
			cate.remove(0);
		model.addAttribute("list", cate);
		model.addAttribute("content", manageContentsService.getContent(vo));
	}
	
	@RequestMapping("manageContents/modifyContent.do")
	public String modify(ContentVO vo)
	{
		System.out.println("Controller : modify");
		manageContentsService.modifyContent(vo);
		return "redirect:ContentsList.do";
	}
	
	@RequestMapping("manageContents/deleteContent.do")
	public String delete(ContentVO vo)
	{
		System.out.println("Controller : delete");
		manageContentsService.deleteContent(vo);
		return "redirect:ContentsList.do";
	}
}

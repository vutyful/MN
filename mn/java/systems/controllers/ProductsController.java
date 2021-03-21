package systems.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.services.ProductsService;

@Controller
public class ProductsController {
	Analysis analysis = new Analysis();
	
	@Autowired
	private ProductsService productsService;

	@RequestMapping(value = "analysis.do")
	@ResponseBody
	public String analysis(Model m)
	{
		if(analysis.isAlive())
		{
			analysis.run();
			return "true";
		}
		else
			return "false";
	}
	
	@RequestMapping("?.do")
	public String getProductsList(Model model)
	{
		System.out.println("Controller : getProductsList");
		model.addAttribute("productsList", productsService.getProductsList());
		return "manager_extend/manageContents/list";
	}
}

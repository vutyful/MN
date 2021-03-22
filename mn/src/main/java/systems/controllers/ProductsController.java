package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.domains.ProductVO;
import systems.services.ProductsService;

@Controller
public class ProductsController {
	Analysis analysis = new Analysis();
	@Autowired
	private ProductsService productsService;
	
	@RequestMapping("product.do")
	public String getProductList(Model model, int result, String cate, String age)
	{
		System.out.println("Controller : getProductsList");
		List<ProductVO> temp = productsService.getProductsList(cate, age);
		System.out.println("size= " + temp.size());
		model.addAttribute("products", productsService.getProductsList(cate, age));
		model.addAttribute("graph", "result_"+result);
		return "product/product";
	}
	
	@RequestMapping(value = "analysis.do")
	@ResponseBody
	public void analysis(Model model)
	{
		if(!analysis.isAlive())
		{
			analysis.run();
			//return "true";
		}
		//else
		//	return "false";
	}
}

package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.AdVO;
import systems.services.AdService;

@Controller
public class AdminADController {
	
	@Autowired
	private AdService adService;
	
	//관리자페이지 게시글 콘트롤러
	@RequestMapping(value="ad.do")
	public String adList(AdVO vo, Model model) {

		List <AdVO> list = adService.adList(vo);
		model.addAttribute("adList", list);

		System.out.println("---관리자 광고관리페이지로 이동---");
		return "manager/ad";
	}

}

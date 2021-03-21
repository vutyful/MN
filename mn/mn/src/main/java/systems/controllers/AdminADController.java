package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.AdVO;
import systems.domains.BoardVO;
import systems.services.AdService;

@Controller
public class AdminADController {
	
	@Autowired
	private AdService adService;
	
	//관리자페이지 게시글 콘트롤러
	@RequestMapping(value="manager/ad.do")
	public void adList(AdVO vo, Model model) {

		List <AdVO> list = adService.adList(vo);
		model.addAttribute("adList", list);

		System.out.println("---관리자 광고관리페이지로 이동---");
	}
	//광고 등록하는 페이지로 이동
	@RequestMapping(value="manager/adInsert.do")
	public void adInsert() {

		System.out.println("---관리자 광고등록페이지로 이동---");
	}
	//광고 글 열람하는 페이지.
	@RequestMapping(value="manager/adContent.do")
	public void adContent(AdVO vo, Model model) {
		adService.adContent(vo);
		
		AdVO list = adService.adContent(vo);
		model.addAttribute("adContent",list);
		System.out.println("---관리자 광고열람페이지로 이동---");
	}
	
	@RequestMapping(value="manager/adModify.do")
	public String adModify(AdVO vo, Model model) {
		
		adService.adModify(vo);
		
		System.out.println("---관리자 광고글 수정---");
		 return "redirect:ad.do"; 
	}
	
	
	//광고 등록성공.
	@RequestMapping(value="manager/adInsertConfirm.do")
	public String adInsertConfirm(AdVO vo) {

		adService.adInsertConfirm(vo); 
		System.out.println(vo.getAd_img());
		
		System.out.println("---관리자 광고등록성공페이지로 이동---");
		return "redirect:ad.do"; 
	}
	//광고삭제하고 바로 광고목록
	@RequestMapping(value="manager/adDelete.do")
	public String adDelete(AdVO vo, Model model) {
			
		adService.adDelete(vo);

		List<AdVO> list = adService.adList(vo);
		model.addAttribute("adDelete", list);
		
		System.out.println("---관리자 광고 삭제---");
		 return "redirect:ad.do"; 
	}

}

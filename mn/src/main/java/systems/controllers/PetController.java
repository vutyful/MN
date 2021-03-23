package systems.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.MemberVO;
import systems.domains.PetVO;
import systems.services.PetService;

@Controller
public class PetController {

	@Autowired
	private PetService petService;

	// 반려동물 리스트
	@RequestMapping(value = "pet/petList.do")
	public void petList(PetVO vo, Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
		vo.setMem_num(Mvo.getMem_num());
		
		List<PetVO> list = petService.petList(vo);

		model.addAttribute("petList", list);
	}

	// 반려동물 수정
	@RequestMapping(value = "pet/petModify.do")
	public String petModify(PetVO vo,Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
		vo.setMem_num(Mvo.getMem_num());
		int pet_num = vo.getPet_num();
		
		System.out.println("petModifiy.do 호출");
		System.out.println(vo.getMem_num());
		System.out.println(vo.getPet_name());
		System.out.println(vo.getPet_birth());
		System.out.println(vo.getPet_dogcat());
		System.out.println(vo.getPet_kind());
		
		if(pet_num != 0)
			petService.petModify(vo);
		else
			petService.petRegist(vo);

		return "redirect:petList.do";

	}
	
	// 반려동물 삭제
	@RequestMapping(value = "pet/petDelete.do")
	public String petDelete(PetVO vo) {

		petService.petDelete(vo);

		return "redirect:petList.do";

	}
	
	// 반려동물 등록
	@RequestMapping("pet/petRegist.do")
	public String petRegist(PetVO vo, HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
		vo.setMem_num(Mvo.getMem_num());
		
		System.out.println("petRegist.do 호출");
		System.out.println(vo.getMem_num());
		System.out.println(vo.getPet_name());
		System.out.println(vo.getPet_birth());
		System.out.println(vo.getPet_dogcat());
		System.out.println(vo.getPet_kind());
		petService.petRegist(vo);
		
		return "redirect:/schdule/mypage2.do";
	}
}

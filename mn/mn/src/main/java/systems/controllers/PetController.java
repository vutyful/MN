package systems.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.PetVO;
import systems.services.PetService;

@Controller
public class PetController {

	@Autowired
	private PetService petService;

	@RequestMapping(value = "pet/petList.do")
	public void petList(PetVO vo, Model model) {
		PetVO list = petService.petList(vo);

		model.addAttribute("petList", list);
	}

	@RequestMapping(value = "pet/petModify.do")
	public String petModify(PetVO vo,Model model) {

		petService.petModify(vo);

		return "redirect:petList.do";

	}
	
	
	@RequestMapping(value = "pet/petDelete.do")
	public String petDelete(PetVO vo) {

		petService.petDelete(vo);

		return "redirect:petList.do";

	}
}

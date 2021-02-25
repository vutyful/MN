package systems.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import systems.domains.registVO;
import systems.services.RegistPostService;

@Controller
public class registPostController {

	@Autowired
	private RegistPostService RegistPostService;
	
	//자유게시판-글저장
	@RequestMapping("regist.do")//요청이름
	public ModelAndView mainfreeboardsave(registVO vo) {
		System.out.println("컨트롤러");
		//System.out.println(vo.getBoardTitle());
		
		RegistPostService.insertComBoard(vo);
	 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:board.jsp"); //redirect는 정보를 갖고 감 = 가는곳
		
		return  mv;
	}
	

	
}

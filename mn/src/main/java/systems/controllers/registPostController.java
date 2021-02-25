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
	
	//�����Խ���-������
	@RequestMapping("regist.do")//��û�̸�
	public ModelAndView mainfreeboardsave(registVO vo) {
		System.out.println("��Ʈ�ѷ�");
		//System.out.println(vo.getBoardTitle());
		
		RegistPostService.insertComBoard(vo);
	 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:board.jsp"); //redirect�� ������ ���� �� = ���°�
		
		return  mv;
	}
	

	
}

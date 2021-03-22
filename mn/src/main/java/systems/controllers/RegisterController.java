package systems.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import systems.domains.MemberVO;
import systems.services.RegisterService;

@Controller
public class RegisterController {
	
	
	@Autowired
	private RegisterService RegisterServiceImpl;

    //메인화면에서 로그인하러 옴(로그인 화면)
    @RequestMapping("/loginpage.do")
    public String loginpage() {
    	return "login";
    }       
    	
    //일반회원 로그인처리
	@RequestMapping(value= "/login.do", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest request) {

		//로그인 정보를 메모리에 요청하여 얻어오기 위해 session 사용
		HttpSession session = request.getSession();
		MemberVO loginresult = RegisterServiceImpl.login(vo);

		if (loginresult!=null) {
			System.out.println("controller 로그인이  " + loginresult);
			session.setAttribute("userInfo",loginresult);
			System.out.println("로그인 성공");
			return "redirect:buenoBasic/main.do";

		} else {
			session.setAttribute("userInfo", null);
		    System.out.println("controller 일반 로그인 실패");
			return "redirect:/login.jsp";
		}
	} 
	//로그아웃
	@RequestMapping("/logout.do") 
	public String logout(HttpSession session) {
		System.out.println(session.getAttribute("mem_name") + "님 로그아웃");
		session.removeAttribute("mem_name");
		session.invalidate(); 
		return "redirect:/main_connection.jsp"; 
	} //end logout
    
	
    //회원가입
	@RequestMapping(value="/registJoin.do", produces = "application/text;charset=utf-8")
	public String registerJoin(MemberVO vo) {
		//아까 받은 계정정보를 vo에 넣으셔서 여기로 보내시면 될거에요.
		System.out.println("이메일"+vo.getMem_email());
		System.out.println("비밀번호"+vo.getMem_pass());
		System.out.println("이름"+vo.getMem_name());
		System.out.println("전화번호"+vo.getMem_tel());
		
		int result = RegisterServiceImpl.registerJoin(vo);
		System.out.println("컨트롤?"+result);
		System.out.println("컨트롤탔니?");
		
		return "redirect:buenoBasic/main.do";
		
	}
	
	
	
	  //아이디 중복 체크
	  
	  @RequestMapping(value="/nickCheck.do") 
	  @ResponseBody
	  	public String nickCheck(MemberVO vo){
		  System.out.println("아이디 중복체크 Controller");
		
		  MemberVO idresult = RegisterServiceImpl.nickCheck(vo);
		 
		  if(idresult == null) {
		  		return "1";  //사용가능한 아이디
		  	}
		  return "0"; //사용중인 아이디
		  
	 }
	  //이메일 중복체크
	  @RequestMapping(value="/emailCheck.do")
	  @ResponseBody
	  public String emailCheck(MemberVO vo) {
		System.out.println("이메일 중복체크 Controller");
		
		MemberVO emailResult = RegisterServiceImpl.emailCheck(vo);
		 if(emailResult == null) {
			 return "1";
		 }
		 return "0";
		
		  
		  
	  }
	  
	 
	
}

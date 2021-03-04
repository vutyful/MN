package systems.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.domains.RegistVO;
import systems.services.RegisterService;

@Controller
public class RegisterController {
	
	
	@Autowired
	private RegisterService RegisterServiceImpl;
	
    //카카오 로그 요청
    @RequestMapping(value="/userInsertKaKao.do", produces = "application/text;charset=utf-8")
    @ResponseBody
    public String userInsertKaKao(@RequestBody RegistVO vo, HttpSession session){
        System.out.println("userInsertKakao 확인 : " + vo.getMem_id());

    	
    	RegistVO RegistVO = RegisterServiceImpl.idCheck_Login(vo);
        if(RegistVO==null){
        	RegisterServiceImpl.userInsertKaKao(vo);
            session.setAttribute("m_Id", vo.getMem_id());
            session.setAttribute("Mem_name", vo.getMem_name());
          
        } else{
            session.setAttribute("m_Id", RegistVO.getMem_id());
            session.setAttribute("Mem_name", RegistVO.getMem_name());
        
        }
        

        return "index";
    }//여기까진 들여쓰기가 맞아요.
    
    
    //메인화면에서 로그인하러 옴
    @RequestMapping("/loginpage.do")
    public String loginpage() {
    	return "login";
    }
    
	
    //일반회원 로그인
	@RequestMapping("/login.do")
	public String login(RegistVO vo) {
		System.out.println("아이디"+vo.getMem_id());
		System.out.println("비번"+vo.getMem_pass());
		Object loginresult = RegisterServiceImpl.login(vo);
//		System.out.println(loginresult.getMem_email());
		if (loginresult!=null) {
			System.out.println("controller 로그인이 된건가 그런건가 " + loginresult);
			//session mem_id(시퀀스), mem_email(아이디) 저장하기
			//model 생각
			return "/communityBoard/communityInsert";
			
		} else {
			System.out.println("controller 일반 로그인 실패");
			return "login";
		}
	} 
    

    //회원가입
	@RequestMapping(value="/registJoin.do", produces = "application/text;charset=utf-8")
	public String registerJoin(RegistVO vo) {
		//아까 받은 계정정보를 vo에 넣으셔서 여기로 보내시면 될거에요.
		System.out.println("이메일"+vo.getMem_id());
		System.out.println("비밀번호"+vo.getMem_pass());
		System.out.println("이름"+vo.getMem_name());
		System.out.println("전화번호"+vo.getMem_tel());
		
		int result = RegisterServiceImpl.registerJoin(vo);
		System.out.println("컨트롤?"+result);
		System.out.println("컨트롤탔니?");
		
		return "index";
		
	}
	
	
	
}

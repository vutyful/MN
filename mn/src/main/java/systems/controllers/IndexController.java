package systems.controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	//����ȣ�� �۾����� views/buenoBasic���� jsp���ϵ�� �̵�������
	@RequestMapping("buenoBasic/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url + " �̵�");
        return "/buenoBasic/"+url;
    }
	
	
	//편의기능 - 병원찾기페이지.
	@RequestMapping("hospital.do")
	public String hospital() {
		return "/buenoBasic/hospital";
	}
	
	
}

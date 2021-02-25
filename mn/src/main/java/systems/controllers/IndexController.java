package systems.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	//민재호가 작업중인 views/buenoBasic폴더 jsp파일들로 이동시켜줌
	@RequestMapping("buenoBasic/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url + " 이동");
        return "/buenoBasic/"+url;
    }
}

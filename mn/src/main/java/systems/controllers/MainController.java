package systems.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.ContentVO;
import systems.services.MainServiceImpl;

@Controller
public class MainController {

	@Autowired
	private MainServiceImpl mainService;

	//기본 mvc
	@RequestMapping("buenoBasic/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url + "실행");
        return "buenoBasic/"+url;
    }
	
	// infoWrite -> 정보글 등록하기 -> infoList 
	@RequestMapping("buenoBasic/writeContent.do")
	public String writeinfo(ContentVO vo) {
		System.out.println("글등록 controller");
		
		mainService.writeInfo(vo);
		return "buenoBasic/infoList";
	}
	
	//메인페이지 로딩
	@RequestMapping("buenoBasic/main.do")
	public void main(Model m) {
		//슬라이더 정보글 가져오기
		List<ContentVO> result = mainService.getAllContent();
		m.addAttribute("contents",result);
		System.out.println(result);
	}
	
	//infoList 페이지 불러오기(견종/묘종 백과 제외한 정보 카테고리)
	@RequestMapping("buenoBasic/infoList.do")
	public void infoList() {

	}
	
	//infoDetail 페이지 불러오기 ()
	@RequestMapping("buenoBasic/infoDetail.do")
	public void infoDetail(int con_id,Model m) { //썸네일 클릭 시 컨텐츠 id 가져오기
		ContentVO detail = mainService.getOneContent(con_id);
		
		// 크롤링 때 replace했던 작은 따옴표 다시 원래대로 replace
		detail.setCon_img(detail.getCon_img().replace("`", "'"));
		m.addAttribute("detail", detail);
	}
	
}

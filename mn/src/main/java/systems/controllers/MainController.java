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
		// con_content에서 첫번째 img 태그 찾아 src 값 얻어오기
		
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
	
	//infoList 페이지 불러오기(건강, 행동 리스트)
	@RequestMapping("buenoBasic/infoList.do")
	public void infoList(String con_cate,Model m) {
		// 메인에서 카테고리 이름 받아와서 con_cate 해당 카테고리 목록 가져오기
		List<ContentVO> result = mainService.getCateContent(con_cate);
		m.addAttribute("ConList", result);
		m.addAttribute("cate", result.get(0).getCon_cate());
	}
	
	//infoCard 페이지 불러오기 (음식, 백과 리스트)
	@RequestMapping("buenoBasic/infoCard.do")
	public void infoCard(String con_cate, Model m) {
		// 메인에서 카테고리 이름 받아와서 con_cate 해당 카테고리 목록 가져오기
		List<ContentVO> result = mainService.getCateContent(con_cate);
		m.addAttribute("ConList", result);
		m.addAttribute("cate", result.get(0).getCon_cate());
	}
	
	
	//infoDetail 페이지 불러오기 ()
	@RequestMapping("buenoBasic/infoDetail.do")
	public void infoDetail(int con_num,Model m) { //썸네일 클릭 시 컨텐츠 id 가져오기
		ContentVO detail = mainService.getOneContent(con_num);
		
		// 크롤링 때 replace했던 작은 따옴표 다시 원래대로 replace
		System.out.println(detail.getCon_content());
		detail.setCon_content(detail.getCon_content().replace("<div>?</div>", ""));
		m.addAttribute("detail", detail);
	}
	
	// 검색된 키워드가 con_content에 포함된 컨텐츠 전부 가져와 검색목록 페이지 불러오기
	@RequestMapping("buenoBasic/searchList.do")
	public void search(String keyword,Model m) {
		List<ContentVO> result = mainService.searchAll(keyword);
		m.addAttribute("result", result);
		m.addAttribute("count", result.size());
		
	}
	
}

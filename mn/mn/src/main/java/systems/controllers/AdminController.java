package systems.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.AdVO;
import systems.domains.BoardVO;
import systems.domains.PetVO;
import systems.services.AdService;
import systems.services.BoardService;
import systems.services.PetService;

@Controller
public class AdminController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private PetService petService;
	
	@Autowired
	private AdService adService;

	// 첫 통계페이지에서 바로 통계화면
	@RequestMapping(value="manager/statistics.do")
	public void admin2(BoardVO boardvo,PetVO petvo,AdVO advo, Model model) {
		System.out.println("통계페이지");

		List<BoardVO> Total = boardService.boardTotal(boardvo); // 총 게시물 수
		List<BoardVO> Today = boardService.boardToday(boardvo); // 오늘의 게시물 수
		
		model.addAttribute("boardTotal", Total);
		model.addAttribute("boardToday", Today);
		

		List<PetVO> Dog = petService.petDog(petvo); // 강아지 수
		List<PetVO> Cat = petService.petCat(petvo); // 고양이 수
		
		model.addAttribute("petDog", Dog);
		model.addAttribute("petCat", Cat);
		
		List<AdVO> Revenue = adService.adRevenue(advo);
		for(int i=0; i<12; i++)
		{
			String st = Integer.toString(i+1);
			if(st.length() < 2)  // 1 부터 9 2자리아니니까
				st = "0" + st;
			try {
				if(!Revenue.get(i).getStartdate().equals(st)) //'!' = not 같지않으면(07들어오는데 값이없으니 08이 들어온다 괄호안 실행 01=01같으면
				{
					AdVO temp = new AdVO();
					temp.setStartdate(st);
					temp.setRevenue(0);
					Revenue.add(i, temp);
				}
					
			}catch(IndexOutOfBoundsException err)
			{
				AdVO temp = new AdVO();
				temp.setStartdate(st);
				temp.setRevenue(0);
				Revenue.add(temp);
				continue;
			}
			catch(NullPointerException err)
			{
				Revenue = new ArrayList<AdVO>();
				AdVO temp = new AdVO();
				Revenue.add(temp);
			}
		}
		//Revenue.get(i) for문으로 12개 돌려서 각 revenue 값만 list에 추가
		
		List<String> list = new ArrayList<String>();
		
		for(int i=0;i<12 ;i++ ) {
			/* list.add(); */	//리베뉴 형식이 AdVO인  달 수익 / 달 수익으로 나열된건데 get(i)는 달 수익/ 한묶음 단위.
			//달 수익 한개씩 리스트로 나누고 또 수익만 필요해서 겟 리베뉴한거
			//리스트에서 i번째 0번쨰의 AdVO의 값의 리베뉴값.
			list.add(i, Integer.toString((Revenue.get(i).getRevenue())));
		}
		System.out.println(list);
		//만든 리스트 보내기
		model.addAttribute("adRevenue", list);
	}
}

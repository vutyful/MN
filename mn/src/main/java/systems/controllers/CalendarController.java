package systems.controllers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.domains.CalendarVO;
import systems.domains.MemberVO;
import systems.services.CalendarServiceImpl;
@Controller
public class CalendarController {
	@Autowired
	private CalendarServiceImpl calendarService;
	
	// 스케쥴러 경로 이동
	@RequestMapping("/schedule/{url}.do")
	public String test(@PathVariable String url) {
		System.out.println(url);
		return "/schedule/"+url;
	}
	
	// 지출 그래프, 몸무게 그래프, 스케쥴러 하단 반려동물 리스트 데이터 받아오기 
	@RequestMapping("/schedule/mypage2.do")
	public void getPetList(CalendarVO vo, Model model, HttpServletRequest request) {
		System.out.println("mypage2.do 호출");
		HttpSession session = request.getSession(true);
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
		
		try {
			if (Mvo.getMem_num() != null) {
				System.out.println("스케쥴러 하단 펫 리스트 받아오는 중");
				System.out.println(Mvo.getMem_num());
				vo.setMem_num(Mvo.getMem_num());
				System.out.println(vo.getMem_num());
				
				//스케쥴러 펫 리스트 불러오기 (스케쥴러 하단의 반려동물 리스트임)
				List<CalendarVO> petList = calendarService.getPetList(vo);
				model.addAttribute("petList", petList);
				
				ArrayList<String> petNameList = new ArrayList<String>();
				for(int i = 0; i < petList.size(); i++) {
					String petName = petList.get(i).getSch_pname();
					petNameList.add(petName);
				}
				model.addAttribute("petNameList", petNameList);
				
				// 로그인 유저의 mem_num을 통해 등록된 반려동물 수 확
				int pet_count = calendarService.getPetCount(vo);
				System.out.println("반려동물 등록 수 : " + Integer.toString(pet_count));
				model.addAttribute("pet_count", pet_count);
				
				ArrayList<ArrayList> temp = new ArrayList<ArrayList>();
				temp = calendarService.getPetWeight(pet_count, vo.getMem_num());

				// 스케쥴러 몸무게 데이터 불러오기
				model.addAttribute("petWeight", temp);
				
				// 스케쥴러 몸무게 d-day 받아오기
				List<CalendarVO> petWDate = calendarService.getWeightDate(vo);
				model.addAttribute("petWeightDate", petWDate);
				
				// 스케쥴러 목욕 d-day 받아오기
				List<CalendarVO> showerDate = calendarService.getShowerDate(vo);
				model.addAttribute("petShowerDate", showerDate);
			}
			
		}catch (Exception e) {
			System.out.println(e);
		}
		
		try {
			if (Mvo.getMem_num() != null) {
				System.out.println("지출 그래프 데이터 받아오는 중");
				model.addAttribute("expenditure", calendarService.expenditureData(vo));
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	
	
	//캘린더 일정 받아오기
	//ajax로 받아온 데이터 한글처리
	@RequestMapping(value="/schedule/test.do", produces="application/text; charset=utf-8")
	@ResponseBody
	public void Test(CalendarVO vo, HttpServletResponse response, HttpServletRequest request, Model model) throws Exception{
		System.out.println("test.do 호출");
		
		// 세션에서 유저 primary key값 받아오기
		HttpSession session = request.getSession(false);
		System.out.println(session.getAttribute("userInfo"));
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
		System.out.println(Mvo.getMem_num());
		vo.setMem_num(Mvo.getMem_num());
		
		try {
			if (vo.getMem_num() != null) {
				
				List<CalendarVO> test = calendarService.test(vo);
				//JSONArray ja = new JSONArray();
				ArrayList<JSONObject> ja = new ArrayList<JSONObject>();
				//List temp = new ArrayList();
				for(int i=0; i < test.size(); i++) {
					JSONObject jo = new JSONObject();
					jo.put("sch_id", test.get(i).getSch_id());
					jo.put("title", test.get(i).getSch_title());
					
					if (test.get(i).getSch_description() != null) {
						jo.put("description", test.get(i).getSch_description());
					}else{
						jo.put("description", "없음");
					};
					jo.put("start", test.get(i).getSch_start());
					jo.put("end", test.get(i).getSch_end());
					jo.put("type", test.get(i).getSch_type());
					jo.put("username", test.get(i).getSch_pname());
					jo.put("backgroundColor", test.get(i).getSch_backgroundColor());
					jo.put("textColor", test.get(i).getSch_textColor());
					jo.put("allDay", test.get(i).getSch_allDay());
					jo.put("walk", test.get(i).getSch_walk());
					jo.put("expenditure", test.get(i).getSch_expenditure());
					jo.put("exDetails", test.get(i).getSch_exDetails());
					jo.put("petWeight", test.get(i).getSch_petWeight());
					
					
					ja.add(jo);
				}
				
				//System.out.println(ja.size());
				//System.out.println(ja);
				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("response", ja);
				
				//		response.getWriter().print(gson.toJson(map));
				response.getWriter().print((Object)ja);
			
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
			
			
//			System.out.println("스케쥴러 하단 펫 리스트 받아오는 중");
//			//스케쥴러 펫 리스트 불러오기 (스케쥴러 하단의 반려동물 리스트임)
//			model.addAttribute("petList", calendarService.getPetList(vo));
	}
	
	
	
	// 스케쥴러 일정 추가하기
	@RequestMapping("/schedule/addSchedule.do")
	@ResponseBody
	public void addsch(CalendarVO vo, HttpServletResponse response, HttpServletRequest request) throws Exception{
		System.out.println("addSchedule.do 호출");
		//System.out.println(vo.getSch_title());
		System.out.println(vo.getSch_pname());
		
		HttpSession session = request.getSession(true);
//		System.out.println(session.getAttribute("userInfo"));
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
//		System.out.println(Mvo.getMem_num());
		vo.setMem_num(Mvo.getMem_num());
		System.out.println(vo.getMem_num());
		
		
		calendarService.addSchedule(vo);
//		return "redirect:/mn/calendar.jsp";
//		return "/mn/calendar.jsp";
		
		
		List<CalendarVO> test = calendarService.test(vo);
		
		ArrayList<JSONObject> ja = new ArrayList<JSONObject>();
		for(int i=0; i < test.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("sch_id", test.get(i).getSch_id());
			jo.put("title", test.get(i).getSch_title());
			
			if (test.get(i).getSch_description() != null) {
				jo.put("description", test.get(i).getSch_description());
			}else{
				jo.put("description", "없음");
			};
			jo.put("start", test.get(i).getSch_start());
			jo.put("end", test.get(i).getSch_end());
			jo.put("type", test.get(i).getSch_type());
			jo.put("username", test.get(i).getSch_pname());
			jo.put("backgroundColor", test.get(i).getSch_backgroundColor());
			jo.put("textColor", test.get(i).getSch_textColor());
			jo.put("allDay", test.get(i).getSch_allDay());
			jo.put("walk", test.get(i).getSch_walk());
			jo.put("expenditure", test.get(i).getSch_expenditure());
			jo.put("exDetails", test.get(i).getSch_exDetails());
			jo.put("petWeight", test.get(i).getSch_petWeight());
			
			ja.add(jo);
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("response", ja);
		
		response.getWriter().print((Object)ja);
		
	}
	
	
	
	//스케쥴러 일정 수정하기
	@RequestMapping("/schedule/updateSchedule.do")
	public void updatesch(CalendarVO vo, HttpServletRequest request) {
		System.out.println("updateSchedule.do 호출");
		System.out.println("일정 id 값 확인 : " + vo.getSch_id());
		
		// 세션에서 유저 primary key값 받아오기
		HttpSession session = request.getSession(true);
//		System.out.println(session.getAttribute("userInfo"));
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
//		System.out.println(Mvo.getMem_num());
		vo.setMem_num(Mvo.getMem_num());
		
		calendarService.updateSchedule(vo);
	}
	
	
	
	//스케쥴러 일정 삭제하기
	@RequestMapping("/schedule/deleteSchedule.do")
	public void deletesch(CalendarVO vo, HttpServletRequest request) {
		System.out.println("deleteSchedule.do 호출");
		System.out.println("일정 id 값 확인 : " + vo.getSch_id());
		
		// 세션에서 유저 primary key값 받아오기
		HttpSession session = request.getSession(true);
//		System.out.println(session.getAttribute("userInfo"));
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
//		System.out.println(Mvo.getMem_num());
		vo.setMem_num(Mvo.getMem_num());
		
		calendarService.deleteSchedule(vo);
//		return "redirect:/mn/test.do";
	}
	
	
	
	//스케쥴러 일정 드롭엔 리사이즈
	@RequestMapping("/schedule/simpleUpdateSchedule.do")
	public void simpleUpdateSchedule(CalendarVO vo, HttpServletRequest request) {
		System.out.println("스케쥴 드롭 or 리사이징 / simpleUpdateSchedule.do 호출");
		System.out.println("일정 id 값 확인 : " + vo.getSch_id());
//		System.out.println("일정 start 값 확인 : " + vo.getSch_start());
//		System.out.println("일정 end 값 확인 : " + vo.getSch_end() + " (설정값보다 하루 더 많다;;)");
		
		
		// 세션에서 유저 primary key값 받아오기
		HttpSession session = request.getSession(true);
//		System.out.println(session.getAttribute("userInfo"));
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
//		System.out.println(Mvo.getMem_num());
		vo.setMem_num(Mvo.getMem_num());
		
		calendarService.simpleUpdateSchedule(vo);
	}
	
		
		

	
}
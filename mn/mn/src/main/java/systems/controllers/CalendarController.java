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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.domains.CalendarVO;
import systems.domains.MemberVO;
import systems.services.CalendarServiceImpl;
@Controller
public class CalendarController {
	@Autowired
	private CalendarServiceImpl calendarService;
	
	//캘린더 일정 받아오기
	//ajax로 받아온 데이터 한글처리
	@RequestMapping(value="mn/test.do", produces="application/text; charset=utf-8")
	@ResponseBody
	public void Test(CalendarVO vo, HttpServletResponse response, HttpServletRequest request) throws Exception{
		System.out.println("test.do 호출");
		
		// 세션에서 유저 primary key값 받아오기
		HttpSession session = request.getSession(false);
		System.out.println(session.getAttribute("userInfo"));
		MemberVO Mvo = (MemberVO)session.getAttribute("userInfo");
		System.out.println(Mvo.getMem_num());
		vo.setMem_num(Mvo.getMem_num());
		
		
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
				
				ja.add(jo);
			}
			
			//System.out.println(ja.size());
			//System.out.println(ja);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("response", ja);
			
	//		response.getWriter().print(gson.toJson(map));
			response.getWriter().print((Object)ja);
		}
	}
	
	
	
	// 스케쥴러 일정 추가하기
	@RequestMapping("mn/addSchedule.do")
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
			
			ja.add(jo);
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("response", ja);
		
		response.getWriter().print((Object)ja);
		
	}
	
	
	
	//스케쥴러 일정 수정하기
	@RequestMapping("mn/updateSchedule.do")
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
	@RequestMapping("mn/deleteSchedule.do")
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
	@RequestMapping("mn/simpleUpdateSchedule.do")
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
package systems.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import systems.domains.CalendarVO;
import systems.services.CalendarServiceImpl;

@Controller
public class CalendarController {

	@Autowired
	private CalendarServiceImpl calendarService;
	
	// 스케쥴러 일정 DB 불러오기 test
	@RequestMapping("mn/test.do")
	public Map<String,Object> Test(CalendarVO vo) {
		System.out.println("test.do 호출 완료");
//		System.out.println(calendarService.test(vo).getClass());
		List<CalendarVO> test = calendarService.test(vo);
//		System.out.println(test.get(0).getSchid());
		
//		JSONArray ja = new JSONArray();
		ArrayList<JSONObject> ja = new ArrayList<JSONObject>();
		for(int i=0; i < test.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("sch_id", test.get(i).getSchid());
			jo.put("title", test.get(i).getTitle());
			jo.put("description", test.get(i).getDescription());
			jo.put("start", test.get(i).getSchstart());
			jo.put("end", test.get(i).getEnd());
			jo.put("type", test.get(i).getType());
			jo.put("username", test.get(i).getUsername());
			jo.put("backgroundColor", test.get(i).getBackgroundColor());
			jo.put("textColor", test.get(i).getTextColor());
			jo.put("allDay", test.get(i).getAllDay());
			
			ja.add(jo);
		}
		
		System.out.println(ja.size());
		System.out.println(ja);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("response", ja);
		
		return map;
	}
}

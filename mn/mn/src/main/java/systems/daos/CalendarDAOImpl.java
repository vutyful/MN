package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.CalendarVO;

@Repository("calendarDAO")
public class CalendarDAOImpl implements CalendarDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 스케쥴러 일정 불러오기
	public List<CalendarVO> test(CalendarVO vo){
		System.out.println("CalendarDAO 일정 불러오는 중");
		//System.out.println("CalendarMapper test 호출");
		//System.out.println(mybatis.selectList("calendar.test",vo));
		return mybatis.selectList("calendar.test", vo);
	}
	
	// 스케쥴러 일정 추가하기
	public void addSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 추가하는 중");
//		System.out.println(vo.getSch_title());
//		System.out.println(vo.getSch_pname());
//		System.out.println(vo.getSch_backgroundColor());
//		System.out.println(vo.getSch_textColor());
//		System.out.println(vo.getSch_allDay());
		mybatis.insert("calendar.addSchedule", vo);
	}
	
	// 스케줄러 일정 수정하기
	public void updateSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 수정하는 중");
		System.out.println(vo.getSch_id());
		System.out.println(vo.getSch_title());
		System.out.println(vo.getSch_description());
		System.out.println(vo.getSch_start());
		System.out.println(vo.getSch_end());
		System.out.println(vo.getSch_backgroundColor());
		System.out.println(vo.getSch_type());
		System.out.println(vo.getSch_pname());
		System.out.println(vo.getMem_num());
		mybatis.update("calendar.updateSchedule", vo);
	}
	
	
	// 스케쥴러 일정 삭제하기
	public void deleteSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 삭제하는 중");
		System.out.println("삭제 일정 id 값 : " + Integer.toString(vo.getSch_id()));
		
		mybatis.delete("calendar.deleteSchedule", vo);
	}
	
	// 스케쥴러 일정 드롭엔 리사이징
	public void simpleUpdateSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 드롭 or 리사이징 하는 중");
		System.out.println("수정 일정 id 값 : " + Integer.toString(vo.getSch_id()));
		System.out.println("수정 일정 start : " + vo.getSch_start());
		System.out.println("수정 일정 end : " + vo.getSch_end() + " (설정값보다 하루 더 많다;;)");
		
		mybatis.update("calendar.simpleUpdateSchedule", vo);
		
	}
	
	
}

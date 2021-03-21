package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.CalendarDAOImpl;
import systems.domains.CalendarVO;

@Service("calendarService")
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	private CalendarDAOImpl calendarDAO;
	
	// 스케쥴러 일정 불러오기
	public List<CalendarVO> test(CalendarVO vo){
		return calendarDAO.test(vo);
	}
	
	// 스케쥴러 일정 추가하기
	public void addSchedule(CalendarVO vo) {
		calendarDAO.addSchedule(vo);
	}
	
	// 스케쥴러 일정 수정하기
	public void updateSchedule(CalendarVO vo) {
		calendarDAO.updateSchedule(vo);
	}
	
	// 스케쥴러 일정 삭제하기
	public void deleteSchedule(CalendarVO vo) {
		calendarDAO.deleteSchedule(vo);
	}
	
	// 스케쥴러 일정 드롭엔 리사이징
	public void simpleUpdateSchedule(CalendarVO vo) {
		calendarDAO.simpleUpdateSchedule(vo);
	}
}

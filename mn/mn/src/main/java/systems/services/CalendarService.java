package systems.services;

import java.util.List;

import systems.domains.CalendarVO;

public interface CalendarService {

	
	// 스케쥴러 일정 불러오기
	List<CalendarVO> test(CalendarVO vo);
	
	//스케쥴러 일정 추가하기
	void addSchedule(CalendarVO vo);
	
	//스케쥴러 일정 수정하기
	void updateSchedule(CalendarVO vo);	
	
	// 스케쥴러 일정 삭제하기
	void deleteSchedule(CalendarVO vo);
	
	// 스케쥴러 일정 드롭엔 리사이징
	void simpleUpdateSchedule(CalendarVO vo);
}

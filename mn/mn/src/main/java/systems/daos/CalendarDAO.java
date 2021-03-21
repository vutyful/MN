package systems.daos;

import java.util.List;

import systems.domains.CalendarVO;

public interface CalendarDAO {

	// 스케쥴러 일정 불러오기
	public List<CalendarVO> test(CalendarVO vo);
	
	// 스케쥴러 일정 추가하기
	public void addSchedule(CalendarVO vo);
	
	// 스케쥴러 일정 수정하기
	public void updateSchedule(CalendarVO vo);
	
	// 스케쥴러 일정 삭제하기
	public void deleteSchedule(CalendarVO vo);
	
	// 스케쥴러 일정 드롭엔 리사이징
	public void simpleUpdateSchedule(CalendarVO vo);
	
}

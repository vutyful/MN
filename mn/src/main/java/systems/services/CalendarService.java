package systems.services;

import java.util.ArrayList;
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
	
	// 스케쥴러 반려동물 리스트 뽑아오기
	List<CalendarVO> getPetList(CalendarVO vo);
	
	// 스케쥴러 지출 그래프 데이터 받아오기
	List<CalendarVO> expenditureData(CalendarVO vo);
	
	// 로그인 유저의 mem_num을 통해 등록된 반려동물 수 확인
	int getPetCount(CalendarVO vo);
	
	// 스케쥴러 몸무게 데이터 불러오기
	ArrayList<ArrayList> getPetWeight(int pet_count, String mem_num);
}

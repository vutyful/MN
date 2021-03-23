package systems.daos;

import java.util.ArrayList;
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
	
	// 스케쥴러 하단 반려동물 리스트 출력
	public List<CalendarVO> getPetList(CalendarVO vo);
	
	// 스케쥴러 지출 그래프 데이터 받아오기
	public List<CalendarVO> expenditureData(CalendarVO vo);
	
	// 로그인 유저의 mem_num을 통해 등록된 반려동물 수 확인
	int getPetCount(CalendarVO vo);
	
	// 스케쥴러 몸무게 데이터 불러오기
	ArrayList<ArrayList> getPetWeight(int pet_count, String mem_num);
	
	// 스케쥴러 몸무게 d-day 받아오기
	List<CalendarVO> getWeightDate(CalendarVO vo);
	
	// 스케쥴러 목욕 d-day 받아오기
	List<CalendarVO> getShowerDate(CalendarVO vo);
}

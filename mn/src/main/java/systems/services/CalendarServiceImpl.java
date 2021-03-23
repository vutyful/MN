package systems.services;

import java.util.ArrayList;
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
	};
	
	// 스케쥴러 일정 추가하기
	public void addSchedule(CalendarVO vo) {
		calendarDAO.addSchedule(vo);
	};
	
	// 스케쥴러 일정 수정하기
	public void updateSchedule(CalendarVO vo) {
		calendarDAO.updateSchedule(vo);
	};
	
	// 스케쥴러 일정 삭제하기
	public void deleteSchedule(CalendarVO vo) {
		calendarDAO.deleteSchedule(vo);
	};
	
	// 스케쥴러 일정 드롭엔 리사이징
	public void simpleUpdateSchedule(CalendarVO vo) {
		calendarDAO.simpleUpdateSchedule(vo);
	};
	
	// 스케쥴러 하단 반려동물 리스트 출력
	public List<CalendarVO> getPetList(CalendarVO vo) {
		return calendarDAO.getPetList(vo);
	};
	
	// 스케쥴러 지출 그래프 데이터 받아오기
	public List<CalendarVO> expenditureData(CalendarVO vo){
		return calendarDAO.expenditureData(vo);
	};
	
	// 로그인 유저의 mem_num을 통해 등록된 반려동물 수 확인
	public int getPetCount(CalendarVO vo) {
		return calendarDAO.getPetCount(vo);
	};
	
	// 스케쥴러 몸무게 데이터 불러오기
	public ArrayList<ArrayList> getPetWeight(int pet_count, String mem_num){
		return calendarDAO.getPetWeight(pet_count, mem_num);
	}
	
	// 스케쥴러 몸무게 d-day 받아오기
	public List<CalendarVO>getWeightDate(CalendarVO vo){
		return calendarDAO.getWeightDate(vo);
	};
	
	// 스케쥴러 목욕 d-day 받아오기
	public List<CalendarVO> getShowerDate(CalendarVO vo){
		return calendarDAO.getShowerDate(vo);
	};
	
};

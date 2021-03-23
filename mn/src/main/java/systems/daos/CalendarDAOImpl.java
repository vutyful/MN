package systems.daos;

import java.util.ArrayList;
import java.util.HashMap;
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
	};
	
	// 스케쥴러 일정 추가하기
	public void addSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 추가하는 중");
//		System.out.println(vo.getSch_title());
//		System.out.println(vo.getSch_pname());
//		System.out.println(vo.getSch_backgroundColor());
//		System.out.println(vo.getSch_textColor());
//		System.out.println(vo.getSch_allDay());
		mybatis.insert("calendar.addSchedule", vo);
	};
	
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
	};
	
	
	// 스케쥴러 일정 삭제하기
	public void deleteSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 삭제하는 중");
		System.out.println("삭제 일정 id 값 : " + Integer.toString(vo.getSch_id()));
		
		mybatis.delete("calendar.deleteSchedule", vo);
	};
	
	// 스케쥴러 일정 드롭엔 리사이징
	public void simpleUpdateSchedule(CalendarVO vo) {
		System.out.println("CalendarDAO 일정 드롭 or 리사이징 하는 중");
		System.out.println("수정 일정 id 값 : " + Integer.toString(vo.getSch_id()));
		System.out.println("수정 일정 start : " + vo.getSch_start());
		System.out.println("수정 일정 end : " + vo.getSch_end() + " (설정값보다 하루 더 많다;;)");
		
		mybatis.update("calendar.simpleUpdateSchedule", vo);
		
	};
	
	
	// 스케쥴러 하단 반려동물 리스트 출력
	public List<CalendarVO> getPetList(CalendarVO vo){
		System.out.println("mem_num : " + vo.getMem_num());
		System.out.println("CalendarDAO 반려동물 리스트 출력");
		return mybatis.selectList("calendar.getPetList", vo);
	};
	
	// 스케쥴러 지출 그래프 데이터 받아오기
	public List<CalendarVO> expenditureData(CalendarVO vo){
		System.out.println("mem_num : " + vo.getMem_num());
		System.out.println("CalendarDAO 지출 그래프 데이터 출력");
		return mybatis.selectList("calendar.expenditureData", vo);
	};
	
	// 로그인 유저의 mem_num을 통해 등록된 반려동물 수 확인
	public int getPetCount(CalendarVO vo) {
		System.out.println("CalendarDAO 반려동물 등록 수 출력");
		return mybatis.selectOne("calendar.getPetCount", vo);
	};
	
	// 스케쥴러 몸무게 데이터 불러오기
	public ArrayList<ArrayList> getPetWeight(int pet_count, String mem_num){
		System.out.println("CalendarDAO 등록된 반려동물 몸무게 출력");
		int petCount =  pet_count;
		String memNum = mem_num;
		ArrayList<ArrayList> petWeights = new ArrayList<ArrayList>();

		
		for (int i = 1; i <=petCount; i++) {
//			List<CalendarVO> petWeight = new ArrayList<CalendarVO>();
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("pet_order", i);
			map.put("mem_num", memNum);

			List<CalendarVO> petWeight = mybatis.selectList("calendar.getPetWeight", map);
			// 한 반려동물의 최근 7번 몸무게 측정db를 담은 ArrayList
			ArrayList<Object> temp2 = new ArrayList<Object>();
			
			for(int j = 0; j < petWeight.size(); j++)
			{
				// 한 반려동물의 하루치 몸무게 측정db를 담은 ArrayList
				//ArrayList<> temp = new ArrayList<>();
				String sch_pname = petWeight.get(j).getSch_pname();
				float sch_petWeight = petWeight.get(j).getSch_petWeight();
				String sch_end = petWeight.get(j).getSch_end();
				//temp.add(sch_pname);
				//temp.add(sch_petWeight);
				//temp.add(sch_end);
				
				temp2.add(sch_petWeight);
			}
			petWeights.add(temp2);
		}
		
		return petWeights;
	}
	
}

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
	
	public List<CalendarVO> test(CalendarVO vo){
		System.out.println("CalendarMapper test »£√‚");
		System.out.println(mybatis.selectList("calendar.test",vo));
		return mybatis.selectList("calendar.test", vo);
	}
}

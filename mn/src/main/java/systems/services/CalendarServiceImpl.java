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
	
	public List<CalendarVO> test(CalendarVO vo){
		return calendarDAO.test(vo);
	}
}

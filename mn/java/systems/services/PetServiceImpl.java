package systems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.PetDAOImpl;
import systems.domains.PetVO;

@Service
public class PetServiceImpl implements PetService{

	@Autowired
	private PetDAOImpl petDAO;
	
	public List<PetVO> petDog(PetVO vo){
		return petDAO.petDog(vo);
	};//관리자페이지 펫 등록 강아지 수 파이차트
	
	public List<PetVO> petCat(PetVO vo){
		return petDAO.petCat(vo);
	};//관리자페이지 펫 등록 고양이 수 파이차트
	
	
}

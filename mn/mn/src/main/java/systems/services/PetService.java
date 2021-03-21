package systems.services;

import java.util.List;

import systems.domains.PetVO;

public interface PetService {
	
	List<PetVO> petDog(PetVO vo);//관리자페이지 펫 등록 강아지 수 파이차트
	
	List<PetVO> petCat(PetVO vo);//관리자페이지 펫 등록 고양이 수 파이차트
	
	//////////////////////////////////////////////////////////////////
	
	
	
	PetVO petList(PetVO vo);//반려동물 정보
	
	int petModify(PetVO vo);//반려동물 수정
	
	
	int petDelete(PetVO vo);//반려동물 삭제

}

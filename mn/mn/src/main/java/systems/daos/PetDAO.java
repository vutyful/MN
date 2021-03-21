package systems.daos;

import java.util.List;

import systems.domains.PetVO;

public interface PetDAO {

	public List<PetVO> petDog(PetVO vo);//관리자페이지 통계 게시판 글 총수
	
	public List<PetVO> petCat(PetVO vo);//관리자페이지 통계 계시판 오늘 글 수
	
	/////////////////////////////////////////////////////////
	
	public PetVO petList(PetVO vo);//반려동물 정보
	
	public int petModify(PetVO vo);//반려동물 수정
	
	public int petDelete(PetVO vo);//반려동물 삭제
}

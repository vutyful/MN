package systems.daos;

import java.util.List;

import systems.domains.PetVO;

public interface PetDAO {

	public List<PetVO> petDog(PetVO vo);//관리자페이지 통계 게시판 글 총수
	
	public List<PetVO> petCat(PetVO vo);//관리자페이지 통계 계시판 오늘 글 수
	
	
}

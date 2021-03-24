package systems.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.PetVO;

@Repository("PetDAO")
public class PetDAOImpl implements PetDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<PetVO> petDog(PetVO vo) {
		return mybatis.selectList("PetMap.petDog", vo);
	}
	// 관리자페이지 펫 등록 강아지 수 파이차트

	@Override
	public List<PetVO> petCat(PetVO vo) {
		return mybatis.selectList("PetMap.petCat", vo);
	}
	// 관리자페이지 펫 등록 고양이 수 파이차트

	///////////////////////////////////////////
	
	public List<PetVO> petList(PetVO vo) {
		return mybatis.selectList("PetMap.petList", vo);
	}//반려동물 열람 리스트

	public int petModify(PetVO vo) {
		return mybatis.update("PetMap.petModify", vo);
	}//반려동물 수정
	
	public int petDelete(PetVO vo) {
		mybatis.delete("PetMap.petScheduleDelete", vo);
		return mybatis.delete("PetMap.petDelete", vo);
	}//반려동물 삭제
	
	
	// 반려동물 등록
	public void petRegist(PetVO vo) {
		System.out.println("petDAO petRegist 호출");
		mybatis.insert("PetMap.petRegist", vo);
	}
}

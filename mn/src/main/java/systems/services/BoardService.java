package systems.services;

import java.util.List;

import systems.domains.BoardVO;

public interface BoardService {
	
	
	List<BoardVO> boardList(BoardVO vo);//게시판 리스트 불러오기
}
package systems.controllers;

import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.domains.BoardVO;
import systems.domains.ReplyVO;
import systems.services.CommunityService;
import systems.services.CommunityServiceImpl;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityServiceImpl CommunityServiceImpl;  //변수명은 소문자
	
	//커뮤니티 서머노트 보이기 부분
	@RequestMapping("communityBoard/commuWriting.do")
	public String commuWriting() {
		return "communityBoard/communityInsert";
		
	}
	
		//커뮤니티 게시판 등록
		@RequestMapping(value="communityBoard/CommunityInsert.do")
		public String CommunityInsert(BoardVO vo) {
			System.out.println("CommunityVO"+ vo);
			System.out.println(vo.getBo_cate());
			System.out.println("community 컨드롤 왔니?? 와라와라");
			//1. id를 통해서 db에서 이름을 가져옴
			//2. 가져온 이름을 합쳐서 insert에 넘김.
			CommunityServiceImpl.CommunityInsert(vo);
			
			
			return "redirect:BoardList.do";

		}
		
		//커뮤니티 게시판 목록보기
		@RequestMapping(value="communityBoard/BoardList.do")
		public String getBoardList(Model model) {
			System.out.println("BoardList 컨트롤 탔니?");
			
			List<BoardVO> vo = CommunityServiceImpl.getBoardList();
			System.out.println(vo.size());
			System.out.println("제목"+vo.get(0).getBo_title());
			System.out.println("날짜"+vo.get(0).getBo_date());
			
			//작성자 이름 뽑아오기 위해, getBoardList 할 때 조인하여 작성자까지 얻어오기 (Map 사용)
			
			model.addAttribute("vo", vo);
			
			return "communityBoard/communityboard";
		
		}
		
		//커뮤니티 상세페이지 보기
		@RequestMapping(value="communityBoard/boardDetail.do") //model
		public String boardDetail(Model model,int bo_num) throws Exception{ 
			System.out.println("상세페이지 컨트롤");
			
			List<Map> list = CommunityServiceImpl.boardDetail(bo_num);
			System.out.println("여기"+list.get(0));
			model.addAttribute("data",list.get(0));
			
			
			//댓글 목록
			 List<HashMap<String, Object>> replyVO = CommunityServiceImpl.getReplyList(bo_num); 
			
			
			System.out.println("댓글목록 getReplyList_controller");
			 /* System.out.println(replyVO.size());
			 * System.out.println("작성자"+replyVO.get(0).getRe_num());
			 * System.out.println("작성날짜"+replyVO.get(0).getRe_date());
			 * System.out.println("댓글 내용"+replyVO.get(0).getRe_content());
			 */
			System.out.println("작성자"+replyVO.get(0).get("mem_name"));
			model.addAttribute("rvo",replyVO);
			
			return "communityBoard/communityboard_Reply";
			
			
		}
		
		//댓글등록
		@RequestMapping(value = "communityBoard/CommunityReply.do")
		@ResponseBody
		public int insertReply(ReplyVO replyVO) { // 댓글 insert,update,delect는 숫자를 반환함
			System.out.println("댓글등록 createReplycontroller");
			System.out.println(replyVO.getMem_num());
			System.out.println(replyVO.getBo_num());
			System.out.println(replyVO.getRe_content());
		
			int result = CommunityServiceImpl.createReply(replyVO);//Insert되는 함수
			if(result==1) { 
				System.out.println(result);
				 return 1; //성공할때
				 }
			return 0; //실패할때
	};
		// 댓글 삭제
		@RequestMapping	(value= "communityBoard/deleteReply.do")	
		public String deleteReply(int re_num) {
			
			CommunityServiceImpl.delReply(re_num);
			
			return "0";
		};
}

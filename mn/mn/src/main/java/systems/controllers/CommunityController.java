package systems.controllers;

import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import systems.domains.BoardVO;
import systems.domains.MemberVO;
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
			
			//작성자 이름 뽑아오기 위해, getBoardList 할 때 조인하여 작성자까지 얻어오기 (Map 사용)
			System.out.println("받아오나"+CommunityServiceImpl.getBoardList().get(0));
			model.addAttribute("boards", CommunityServiceImpl.getBoardList());
			
			return "communityBoard/communityboard";
		
		}
		
		//게시글 수정페이지 전환
		//1)게시글 수정 select로 원본을 받아온다.
		@RequestMapping(value="communityBoard/boardUpdate.do")
		public String boardUpdate(String bo_num,Model model){
			System.out.println("커뮤니티 게시물 수정 controller");
			BoardVO vo = new BoardVO();
			vo.setBo_num(Integer.parseInt(bo_num));
			
			BoardVO modifyResult = CommunityServiceImpl.selectReply(vo);
			modifyResult.setBo_content("<div class=\"entry-content entry clearfix\">"+modifyResult.getBo_content()+"</div>");
			System.out.println("받아온 컨텐츠"+modifyResult.getBo_content());
			model.addAttribute("modifyResult",modifyResult);
			return "communityBoard/communitymodify";
			
		}
		//게시글 수정하는 등록하는 곳
		@RequestMapping(value="communityBoard/commuUpate.do") //model로 select로 값 불러오기
		public String commuUpate(BoardVO vo, int bo_num){		
			System.out.println("컨트롤러 제목"+vo.getBo_title());
			System.out.println("컨트롤러 내용"+ vo.getBo_content());
			System.out.println("컨트롤러 게시판번호"+ vo.getBo_num());  // 번호가없어서 못함 재상이의 뽀송머리 유지바람/ 린스바람
			
			int boUpdate = CommunityServiceImpl.commuUpate(vo, bo_num);
			System.out.println("게시글 수정하는 등록"+boUpdate);
			
			return  "redirect:boardDetail.do?bo_num="+vo.getBo_num(); // 1이면 등록 성공, 0이면 등록 실패
		}
		
		//커뮤니티 상세페이지 보기
		@RequestMapping(value="communityBoard/boardDetail.do") //model
		public String boardDetail(Model model,int bo_num) throws Exception{ 
			System.out.println("상세페이지 컨트롤");
			
			List<Map> list = CommunityServiceImpl.boardDetail(bo_num);
			System.out.println("여기"+list.get(0));
			model.addAttribute("data",list.get(0));
			model.addAttribute("bo_num",bo_num);
			
			//댓글 목록
			List<HashMap<String, Object>> replyVO = CommunityServiceImpl.getReplyList(bo_num); 
			System.out.println("댓글목록 getReplyList_controller");

			model.addAttribute("rvo",replyVO);
			model.addAttribute("recount",replyVO.size());
			
			return "communityBoard/communityboard_Reply";
			
			
		}
		
		
		//댓글등록
		@RequestMapping(value = "communityBoard/CommunityReply.do")
		@ResponseBody
		public int insertReply(ReplyVO replyVO, HttpSession session) { // 댓글 insert,update,delect는 숫자를 반환함
			/*
			 * MemberVO vo = (MemberVO)session.getAttribute("userInfo"); //세션값(mem_num)을
			 * 받아오기 위해 HttpSession session 사용 System.out.println(vo);
			 * replyVO.setMem_num(vo.getMem_num());
			 */
			System.out.println("댓글등록 createReplycontroller");
			System.out.println("mem_num:"+replyVO.getMem_num());
			System.out.println("bo_num:"+replyVO.getBo_num());
			System.out.println("re_content:"+replyVO.getRe_content());
	
		
			int result = CommunityServiceImpl.createReply(replyVO);//Insert되는 함수
			//getReCurrval mapper에서 현재 seq_reply 값 얻어오기
			System.out.println("댓글등록"+result);
			return result; // 1이면 등록 성공, 0이면 등록 실패
			
	};
	
		// 댓글 삭제
		@RequestMapping	(value= "communityBoard/deleteReply.do")
		@ResponseBody
		public int deleteReply(int re_num) {
			System.out.println("댓글삭제 컨트롤러 :" + re_num);
			int delresult = CommunityServiceImpl.delReply(re_num);
			if(delresult==1) {
				return 1; //댓글 삭제 성공
			}
			return 0; // 삭제 실패
		};
}

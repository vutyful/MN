<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file = "/header.jsp" %>
<style>
.blog-thumbnail .mb-50{
	border: 1px solid gold
}

.bueno-btn{
	position:relative;
	background-color: lightpink;
    margin-left: 600px;
}
.post-author .post-date .reply{
font-size: 15px;
}

</style>

<body>
	
	<!-- 게시판 제목 입력란 -->
	<section class="post-news">
		<div class="container">
			<div class="post-details-content mb-100" style="margin-top: 80px;">
				<div class="con-content">
					<div class="col-12 col-lg-6" style="padding-left:-80px;">
						<h4 class="post-title">${data.BO_TITLE}</h4>
						<div class="post-meta mb-50" >
							<a href="#"class="post-author">작성자: ${data.MEM_NAME}</a>
							<a href="#" class="post-date">작성날짜: ${fn:substring(data.BO_DATE,0,16)} </a> 
							<a href="#"class="post-author"> 종류: ${data.BO_CATE}</a>
						</div>
					</div>
				</div>
			</div>


			<!-- con-content 게시판 내용 사진 입력 -->

			<div class="row justify-content-center">
				<!--con-content 게시판 내용 입력 -->
				<div class="col-12 col-lg-8 col-xl-9">
					<div class="post-details-content mb-100">
						<div class="blog-thumbnail mb-50">
							<img src="../resources/bueno/img/bg-img/cat_shower.png" alt="">
						</div>
						<div>
							${data.BO_CONTENT}
						</div>
						<!--회원 비회원을 위한 코드를 위해 남겨 놓음 -->
				 <form id="frm" action="../communityBoard/boardUpdate.do">
				 <input type="hidden" name="bo_num" id="bo_num" value="${bo_num}"/>
				  <div id="test4">
					<c:choose>
						<c:when test="${sessionScope.userInfo.mem_num  eq data.MEM_NUM}">
							<div class="col-12" style="align-content: right;">
							<a id="update_btn" value="수정" class="btn bueno-btn mt-30 updateBtn">게시글수정</a>
						</c:when>
						<c:otherwise>
							<div class="col-12">
							</div>
						</c:otherwise>
					</c:choose>
				 </div>
				 </form>
					</div>
					<h4 class="mb-50">댓글</h4>
					<div class="comment_area clearfix mb-100">
					<!-- 자바스크립트에서 ol 한번 더 만듦어줌 mb-50의 자식으로 append 함수 사용 -->
						<input type="hidden"  name="mem_num" value="${sessionScope.userInfo.mem_num}">
						<input type="hidden"  class="mem_name" value="${sessionScope.userInfo.mem_name}">
						<c:forEach items="${rvo}" var="items"> 
						<ol>
							<!-- Single Comment Area -->
							<li class="single_comment_area">
								<!-- Comment Content -->
								<div class="comment-content d-flex">
									<!-- Comment Meta -->
									<div class="comment-meta">
										<div class="d-flex" style="font-size: 15px;"><!-- hashmap은 대문자로 컬럼명을 써야한다. -->
											<a href="#" id="mam_name" name="mam_name" class="post-author">${items.MEM_NAME}</a> 
											<a href="#" id="re_date" name="re_date"class="post-date">${fn:substring(items.RE_DATE,0,16)}</a>
										</div>
										<p style="font-size: 15px;"><a href="#" id="re_content" name="re_content"class="reply">댓글 내용:${items.RE_CONTENT}</a></p>
										<!-- 삭제 if문-->
										<input type="hidden" id="re_num" name="re_num"value='${items.RE_NUM}'/>
										<c:if test="${sessionScope.userInfo.mem_num eq items.MEM_NUM}">
										<%-- 	<button id = "modi_btn${items.RE_NUM}"  class="btn bueno-btn mt-30 re_modify ">댓글수정</button> --%>
											<button id = "del_btn"  class="btn bueno-btn mt-30">삭제</button>
										</c:if>
									</div>
								</div>

							</li>
						</ol>
						</c:forEach>
					</div>

					<div class="post-a-comment-area mb-30 clearfix">
						<h4 class="mb-50">댓글 남기기</h4>

						<!-- Reply Form -->
						<div class="contact-form-area">
							<form name="replyForm" id="replyForm">
								<div class="row">
									<div class="col-12"></div>
										<div class="col-12">
									<!-- value는 값을 넘겨 주는 것이다 -->
										<input type="hidden"  id="mem_num" name="mem_num" value="${sessionScope.userInfo.mem_num}">
										<%-- <input type="hidden"  id="re_num" name="re_num" value="${replyVO.re_num}"> --%>
										<input type="hidden"  id="bo_num" name="bo_num" value="${param.bo_num}"><!--  url에서 보여지는 값을 이용하는 방법: param으로 받는다. -->
						 				<!-- bo_num은 세션에 있지 않아서 url에 나온 상태를 이용하는 방법: param -->
										<textarea id="re_content" name="re_content" class="form-control"
											cols="30" rows="10" placeholder="내용"></textarea>  <!-- 등록시에는 vo값을 받을 필요가 없다. -->
										<div class="col-12">
											<c:choose>
												<c:when test="${empty sessionScope.userInfo}">
													<a href="/mn/login.jsp?"class="btn bueno-btn mt-30"
														type="button"">로그인</a>
												</c:when>
												<c:otherwise>
													<button id="re_insert" class="btn bueno-btn mt-30"
														type="button">등록</button>
													<!-- ajax시에는 javascript에서 function을 걸어서 submit함 -->
												</c:otherwise>
											</c:choose>
										</div> 
									</div> 
					
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Sidebar Widget -->
				<div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
					<div class="sidebar-area">

						<!-- Single Widget Area -->
						<div class="single-widget-area post-widget mb-30">
							<!-- Single Post Area -->
							<div class="single-post-area d-flex"></div>

						</div>
					</div>
				</div>
	</section>

	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-5">
					<!-- Copywrite Text -->
					<p class="copywrite-text">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
				<div class="col-12 col-sm-7"></div>
			</div>
		</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="../resources/bueno/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../resources/bueno/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="../resources/bueno/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="../resources/bueno/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="../resources/bueno/js/active.js"></script>

	<script type="text/javascript">
	$(function() {
	
	//게시글 수정버튼 눌렀을 시
	
	$('#update_btn').click(function () {
		alert('수정 버튼 클릭');
		$('#frm').submit();
		
	})
		
	//(댓글)삭제버튼을 눌렀을 시
	$(document).on('click','#del_btn',function(){
 		alert("삭제버튼 클릭"); 
		alert($(this).prev().val());
		
   	$.ajax({
		type:"get",
		url:"/mn/communityBoard/deleteReply.do",
		contentType:'application/x-www-form-urlencoded;charset=utf-8',
		dataType:"json",
		data:{
			"re_num":$(this).prev().val()
			},
			success: function(delresult) {
				console.log(delresult);
				if(delresult==1){
					alert("삭제되었습니다");
				}
			},
			error: function(){
					alert("댓글삭제 실패");
				}
		});	 //삭제 ajax of end
 	 	$(this).parent().parent().parent().parent().remove();

	}); //삭제 of end

	
	//댓글 등록		
 	$(document).on('click','#re_insert',function(){

	//댓글 비동기식 처리 ajax
	$.ajax({
		type: "POST",
		async: true,
		url :"/mn/communityBoard/CommunityReply.do",
		contentType:'application/x-www-form-urlencoded;charset=utf-8',
		dataType:"json",
		data:{	//id 값이 필요함, ajax는  form에 action이 필요가 없다.
				'mem_num':$("#mem_num").val(),  //회원번호
				'bo_num':$("#bo_num").val(),	//게시판번호
				're_content':$(".form-control").val()	//내용
			},
			success: function(result) {
			
				if(result==1){ // 1 (int ) 비교 "1" (string ) 되지 않도록 실수 주의

				$('.comment_area').prepend('<ol>'
						+'<li class="single_comment_area">'
						+'<div class="comment-content d-flex">'
						+'<div class="comment-meta">'
						+'<div class="d-flex">'
						+'<input type="hidden"  name="mem_num" value="'
						+$(".mem_name").val()
						+'">'
						+'<input type="hidden"  name="bo_num" value="${param.bo_num}">'
						+'<a href="#" class="post-author">작성자:'
						+$(".mem_name").val()
						+'</a>' 
						+'<a href="#" class="post-date">작성 날짜:방금전</a>'
						+'</div>'
						+'<p><a href="#" class="reply">댓글 내용:'
						+$(".form-control").val()
							+'</a></p>'	
							+ '<input type="hidden" id="re_num" name="re_num"value='+result+'/>'
							+'<button id = "del_btn"  class="btn bueno-btn mt-30">삭제</button>'
						+'</div>'
						+'</div>'
	
						+'</li>'
						+'</ol>');
						$('.form-control').val('');
				
					} 

				},
					error: function(){
						alert("댓글등록 실패");
						
			}
		}); //댓글 ajax of end
 	}); //댓글 입력end
	
 	
})//end
	</script>
</body>
	</html>
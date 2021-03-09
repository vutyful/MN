<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file = "/header.jsp" %>


<body>

	<!-- 게시판 제목 입력란 -->
	<section class="post-news">
		<div class="container">
			<div class="post-details-content mb-100" style="margin-top: 80px;">
				<div class="con-content">
					<div class="col-12 col-lg-6" style="padding-left:-15px;">
						
						<h4 class="post-title">${data.BO_TITLE}</h4>

						<div class="post-meta mb-50">
							<a href="#" class="post-date"> ${data.BO_DATE} </a> 
							<a href="#"class="post-author">${data.MEM_NAME}</a>
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
						
					<c:choose>
						<c:when test="${sessionScope.userInfo.mem_num  eq data.MEM_NUM}">
							<div class="col-12">
								<input type="submit" id="update_btn" value="수정" class="btn bueno-btn mt-30"/>
								<input type="submit" id="delect_btn" value="삭제" class="btn bueno-btn mt-30"/>
						</c:when>
						<c:otherwise>
							<div class="col-12">
							</div>
						</c:otherwise>
					</c:choose>
						
					</div>
					<div class="comment_area clearfix mb-100">
						<h4 class="mb-50">댓글</h4>

						<ol>
							<!-- Single Comment Area -->
							<li class="single_comment_area">
								<!-- Comment Content -->
								<div class="comment-content d-flex">
									<!-- Comment Meta -->
									<div class="comment-meta">
										<div class="d-flex">
											<a href="#" class="post-author">도그파파</a> <a href="#"
												class="post-date">July 11, 2021</a> <a href="#"
												class="reply">Reply</a>
										</div>
										<p>상냥한 고양이네요. 하하하하하하</p>
									</div>
								</div>

							</li>
						</ol>
					</div>

					<div class="post-a-comment-area mb-30 clearfix">
						<h4 class="mb-50">리플남기기</h4>

						<!-- Reply Form -->
						<div class="contact-form-area">
							<form action="#" method="post">
								<div class="row">

									<div class="col-12"></div>
									<div class="col-12">
										<textarea name="message" class="form-control" id="message"
											cols="30" rows="10" placeholder="내용"></textarea>
									</div>
									<div class="col-12">
										<button class="btn bueno-btn mt-30" type="submit">등록</button>
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

							<!-- Single Widget Area -->
							<!--                         <div class="single-widget-area newsletter-widget mb-30">
                            <h6>내가쓴글보기</h6>
                            <form action="#" method="post">
                               <button type="submit" class="btn bueno-btn w-100">내가쓴글보기</button>
                            </form>
                        </div>
                    </div> -->
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
	//수정버튼을 눌렀을 시
	$('#update_btn').click(function () {
		alert("게시글 수정")
	});
	
	
	
	
	</script>
	</body>
	</html>
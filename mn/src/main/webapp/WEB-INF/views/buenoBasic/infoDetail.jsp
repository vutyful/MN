<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>

    <!-- ##### Post Details Area Start ##### -->
    <section class="post-news-area section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <div class="post-details-content mb-100">
                       <div class="blog-thumbnail mb-50">
                        <c:choose>
                        	<c:when test="${empty sessionScope.userInfo}"> <!-- 로그인 안했을 때 -->
                       		 <a href="/mn/login.jsp"><img src="/mn/resources/content/img/bm_no.jpg" style="width: 60px; height: 60px;"></a>
                        	</c:when>
                        	<c:otherwise> <!-- 북마크 안했을 때 -->
                       		 <img id="bm_img" src="/mn/resources/content/img/bm_no.jpg" style="width: 60px; height: 60px;">
                        	</c:otherwise>
                        </c:choose>
                       </div>
                       <input type="hidden" id="con_num" value="${detail.con_num}">
                        <div class="blog-content">
                            <a href="#" class="post-tag" style="font-size: 20px;">${detail.con_cate}</a>
                            <div class="post-meta mb-50">
                                <a href="#" class="post-date"> ${detail.con_date} </a>
                            </div>
                            <!-- 글 내용 -->
                            ${detail.con_content}
                        </div>
                    </div>

					<!-- 댓글 리스트 -->
                    <div class="comment_area clearfix mb-100">
                        <h4 class="mb-50">댓글 <span id="cCount">${recount}</span>개</h4>

                        <ol>
                            <!-- 개별 댓글 -->
                            <div id="addComment_area">
	                        </div>
                            <c:choose>
	                            <c:when test="${not empty replys}">
		                            <c:forEach items="${replys}" var="re">
			                            <li class="single_comment_area">
			                                <!-- Comment Content -->
			                                <div class="comment-content d-flex">
			                                    <!-- Comment Meta -->
			                                    <div class="comment-meta">
			                                        <div class="d-flex">
			                                            <a href="#" class="post-author">${re.MEM_NAME}</a>
			                                            <a href="#" class="post-date">${re.RE_DATE}</a>
			                                            <a href="#" class="reply">답글 달기</a>
			                                        </div>
			                                        <p> ${re.RE_CONTENT}</p>
			                                    </div>
			                                </div>
			                            </li>
		                            </c:forEach>
	                            </c:when>
	                            <c:otherwise>
	                            <!-- Single Comment Area -->
	                            <li class="single_comment_area" id="nonereply">
	                                <!-- Comment Content -->
	                                <div class="comment-content d-flex">
	                                    <!-- Comment Meta -->
	                                   <p>등록된 댓글이 없습니다.</p>
	                                </div>
	                            </li>
	                            </c:otherwise>
                            </c:choose>
                        </ol>
                    </div>
                    <!-- 댓글 작성 -->
                    <div class="post-a-comment-area mb-30 clearfix" >
                        <h4 class="mb-50">댓글 쓰기</h4>

                        <!-- Reply Form -->
                        <div class="contact-form-area">
                                <div class="row">
                                    <div class="col-12">
                                        <textarea name="re_content" id="re_content" class="form-control" cols="30" rows="10" placeholder="댓글을 입력해주세요."></textarea>
                                        <input type="hidden" name="con_num" id="con_num" value="${detail.con_num}">
                                        <input type="hidden" name="mem_name" id="mem_name" value="${sessionScope.userInfo.mem_name}">
                                        
                                    </div>
                                    <div class="col-12">
                                   	<c:choose>
	                                   	<c:when test="${not empty sessionScope.userInfo}"> <!-- 로그인 세션이 있을 때 -->
	                                       <button class="btn bueno-btn mt-30" id="replyinsert">등록하기</button>
	                                   	</c:when>
	                                   	<c:otherwise>
	                                       <button id="login" class="btn bueno-btn mt-30">로그인</button>
	                                   	</c:otherwise>
                                       </c:choose>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>

                <!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">
                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget mb-30" style="margin-top:200px;">
                        </div>
                        <div class="single-widget-area add-widget mb-30">
                            <img src="../resources/bueno/img/bg-img/add.png" alt="">
                        </div>
                        <div class="single-widget-area add-widget mb-30">
                            <img src="../resources/bueno/img/bg-img/add.png" alt="">
                        </div>
                        <div class="single-widget-area add-widget mb-30">
                            <img src="../resources/bueno/img/bg-img/add.png" alt="">
                        </div>
                        <div class="single-widget-area add-widget mb-30">
                            <img src="../resources/bueno/img/bg-img/add.png" alt="">
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Post Details Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <p class="copywrite-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
                <div class="col-12 col-sm-7">
                    <!-- Footer Nav -->
                    <div class="footer-nav">
                        <ul>
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Recipes</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
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
    <script src="../resources/bueno/js/active_main.js"></script>
    <!-- bookmark js -->
    <script src="../resources/content/bookmark.js"></script>
    <!-- reply.js -->
    <script src="../resources/content/reply.js"></script>
</body>

</html>
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
                            <h4 class="post-title" style="font-size: 40px; color: ">${detail.con_title}</h4>
                            <div class="post-meta mb-50">
                                <a href="#" class="post-date"> ${detail.con_date} </a>
                            </div>
                            <!-- 글 내용 -->
                            ${detail.con_content}
                        </div>
                    </div>

					<!-- 댓글 -->

                </div>

                <!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">
                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget mb-30" style="margin-bottom:100px; height: 800px;">
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
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>

    <!-- 정보글 시작 -->
	        	
    <div class="catagory-post-area">
        <div class="container">
    		<div style="padding:80px;">
    			<h2 style="color:black; text-align: center;"> 총 ${count} 개의 검색결과 </h2> 
    		</div>
            <div class="row justify-content-center">
                <!-- Post Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <!-- Single Blog Post -->
                    <c:forEach items="${result}" var="re">
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <a href="infoDetail.do?con_num=${re.con_num}"><img src="${re.con_img}" alt="" style="width: 600px; height: 280px;"></a>
                        </div>
                        <!-- Blog Content -->
                        <div class="blog-content">
                            <a href="infoDetail.do?con_num=${re.con_num}" class="post-title">${re.con_title}</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">${re.con_date}</a>
                            </div>
                            ${re.con_head}
                        </div>
                    </div>
                    </c:forEach>

                    <!-- Single Blog Post -->
<!--                     <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="../resources/bueno/img/bg-img/11.jpg" alt="">
                        </div>
                        Blog Content
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best</a>
                            <a href="#" class="post-title">Birthday cake with chocolate</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">July 11, 2018</a>
                                <a href="#" class="post-author">By Julia Stiles</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus.</p>
                        </div>
                    </div> -->
                </div>

                <!-- Sidebar Area -->
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="pagination-area mt-70">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">01</a></li>
                                <li class="page-item active"><a class="page-link" href="#">02</a></li>
                                <li class="page-item"><a class="page-link" href="#">03</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Post Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <!-- <p class="copywrite-text"><a href="#">Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p> -->
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
    <script src="../resources/bueno/js/active.js"></script>
</body>

</html>
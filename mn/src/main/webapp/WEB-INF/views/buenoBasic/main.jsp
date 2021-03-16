<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>

<!-- Stylesheet -->
    <link rel="stylesheet" href="/mn/resources/bueno/style2.css">
    <!-- ##### 메인 슬라이더 area ##### -->
    <div class="hero-area" style="margin-top: 100px; margin-bottom: 80px;">
        <!-- Hero Post Slides -->
        <div class="hero-post-slides owl-carousel">
            <!-- Single Slide -->
            <c:forEach items="${contents}" var="con" >
            <div class="single-slide">
                <!-- Blog Thumbnail -->
                <div class="blog-thumbnail">
                    <a href="infoDetail.do?con_id=${con.con_num}"><img src="${con.con_img }" style="width: 600px; height: 480px;" alt=""></a>
                </div>

                <!-- Blog Content -->
                <div class="blog-content-bg">
                    <div class="blog-content">
                        <a href="infoDetail.do?con_num=${con.con_num}" class="post-tag">${con.con_cate}</a>
                        <a href="infoDetail.do?con_num=${con.con_num}" class="post-title">${con.con_title}</a>
                        <div class="post-meta">
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>

            <!-- Single Slide -->
<!--             <div class="single-slide">
                Blog Thumbnail
                <div class="blog-thumbnail">
                    <a href="#"><img src="../resources/idximg/slide4.jpg" alt=""></a>
                </div>

                Blog Content
                <div class="blog-content-bg">
                    <div class="blog-content">
                        <a href="#" class="post-tag">댕댕이~</a>
                        <a href="#" class="post-title">정보글4</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">July 11, 2018</a>
                            <a href="#" class="post-author">By Julia Stiles</a>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
    <!-- ##### 메인 슬라이더 Area End ##### -->

    <!-- ##### 인기글 시작 ##### -->
    <div style=" position:relative; left: 40%; margin-bottom:20px;">
    <div class=".section-padding-70-20" style="text-align: center; width: 20%; background-color:#FAEFE2; color:#DEA361; border:#FAEFE2 solid 3px; border-radius:10px;"><h2 style=" margin-top:8px; 
    text-align: center;">인기 정보</h2></div>
    </div>
    <div class="post-catagory mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- 인기글 개별 -->
                <c:forEach items="${popular}" var="pop">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-post-catagory mb-30 box">
                        <img src="${pop.con_img}" class = "profile" alt="">
                       <!--  Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                                <a href="infoDetail.do?con_num=${pop.con_num}" class="post-tag">${pop.con_cate}</a>
                                <a href="infoDetail.do?con_num=${pop.con_num}" class="post-title">${pop.con_title}</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- ##### 인기글 끝 ##### -->
    
    <!-- ##### 최신글 시작 ##### -->
    <div style=" position:relative; left: 40%; margin-bottom:20px;">
    <div class=".section-padding-70-20" style="text-align: center; width: 20%; background-color:#FAEFE2; border:#FAEFE2 solid 3px; border-radius:10px;"><h2 style=" margin-top:8px; 
    text-align: center; ">최신 정보</h2></div>
    </div>
    <div class="post-catagory mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- 최신글 개별 -->
                <c:forEach items="${latest}" var="lat">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-post-catagory mb-30 box">
                        <img src="${lat.con_img}" class = "profile" alt="">
                       <!--  Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                                <a href="infoDetail.do?con_num=${lat.con_num}" class="post-tag">${lat.con_cate}</a>
                                <a href="infoDetail.do?con_num=${lat.con_num}" class="post-title">${lat.con_title}</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- ##### 최신글 끝 ##### -->

    <!-- ##### Big Posts Area Start ##### -->
     <div class="big-posts-area mb-50">
        <div class="container">
            <!-- Single Big Post Area -->
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50">
                        <img src="/mn/resources/bueno/img/bg-img/7.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                        <a href="#" class="post-tag">Healthy</a>
                        <a href="#" class="post-title">Friend eggs with ham</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">July 11, 2018</a>
                            <a href="#" class="post-author">By Julia Stiles</a>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus, egestas tincidunt augue pellentesque. Suspendisse vestibulum sem in eros maximus, pretium commodo turpis convallis. Aenean scelerisque orci quis urna tempus, vitae interdum velit aliquet.</p>
                        <a href="#" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
            </div>

            <!-- Single Big Post Area -->
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                        <a href="#" class="post-tag">The Best</a>
                        <a href="#" class="post-title">Steak with boiled vegetables</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">July 11, 2018</a>
                            <a href="#" class="post-author">By Julia Stiles</a>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus, egestas tincidunt augue pellentesque. Suspendisse vestibulum sem in eros maximus, pretium commodo turpis convallis. Aenean scelerisque orci quis urna tempus, vitae interdum velit aliquet.</p>
                        <a href="#" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50">
                        <img src="/mn/resources/bueno/img/bg-img/8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Big Posts Area End ##### -->

    <!-- ##### Posts Area End ##### -->
<!--     <div class="bueno-post-area mb-70">
        <div class="container">
        	
        	<img src="./resources/idximg/qna2.jpg" alt="">
        	
            <div class="row justify-content-center">
                퀴즈 자리
                <div class="col-12 col-lg-8 col-xl-9">
                    Single Blog Post 
                    1<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        Blog Thumbnail
                        <div class="blog-thumbnail">
                            <img src="./resources/bueno/img/bg-img/9.jpg" alt="">
                            <img src="../resources/idximg/qna.jpg" alt="">
                        </div>

                    Single Blog Post
                </div>

                사이드 광고
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">

                        Single Widget Area
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
    </div> -->
<<<<<<< HEAD
    <!-- ##### Big Posts Area End ##### -->

    <!-- ##### Posts Area End ##### -->
    <div class="bueno-post-area mb-70">
        <div class="container">
        	
        	<!-- <img src="./resources/idximg/qna2.jpg" alt=""> -->
        	
            <div class="row justify-content-center">
                <!-- Post Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <!-- Single Blog Post  -->
                    <!-- 1<div class="single-blog-post style-1 d-flex flex-wrap mb-30"> -->
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <!-- <img src="./resources/bueno/img/bg-img/9.jpg" alt=""> -->
                            <img src="../resources/idximg/qna.jpg" alt="">
                        </div>

                    <!-- Single Blog Post -->
                </div>

                <!-- Sidebar Area -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">
                        <!-- Single Widget Area -->
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
    </div>
=======
>>>>>>> branch 'main' of https://github.com/vutyful/MN.git
    <!-- ##### Posts Area End ##### -->

    <!-- ##### Instagram Area Start ##### -->
<!--     <div class="instagram-feed-area d-flex flex-wrap">
        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta1.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta1.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta2.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta2.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta3.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta3.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta4.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta4.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta5.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta5.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta6.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta6.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta7.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta7.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta8.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta8.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta9.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta9.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="../resources/bueno/img/bg-img/insta10.jpg" alt="">
            Image Zoom
            <a href="../resources/bueno/img/bg-img/insta10.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>
    </div> -->
    <!-- ##### Instagram Area End ##### -->

	<%@include file = "/footer.jsp" %>

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

   

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>멍냥</title>

    <!-- Favicon -->
    <link rel="icon" href="/mn/resources/idximg/멍냥.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/mn/resources/bueno/style2.css">
    
    <!-- summer note -->
    <link rel="stylesheet" type="text/css" href="../resources/summernote/summernote.css">

</head>

<body>

    <!-- ##### Header Area Start ##### -->
<header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area bg-img bg-overlay" style="background-image: url(/mn/resources/idximg/header.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <div class="col-12 col-sm-6">
                        <!-- Top Social Info -->
                        <div class="top-social-info">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                        <!-- Top Search Area -->
                        <div class="top-search-area">
                            <form action="/mn/buenoBasic/searchList.do" method="post">
                                <input type="search" name="keyword" id="topSearch" placeholder="검색어를 입력하세요.">
                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area">
            <a href="main.do"><img src="/mn/resources/idximg/로고.PNG" alt=""></a>
        </div>

        <!-- Navbar Area -->
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off" style="background-color:#F2DAC0;">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="buenoNav">

                        <!-- Toggler -->
                        <div id="toggler"><img src="/mn/resources/bueno/img/core-img/toggler.png" alt=""></div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="#">강아지</a>
                                            <ul class="dropdown">
                                                <li><a href="/mn/buenoBasic/infoCard.do?con_cate=강아지 음식">- 강아지 음식</a></li>
                                                <li><a href="/mn/buenoBasic/infoList.do?con_cate=강아지 행동">- 강아지 행동</a></li>
                                                <li><a href="/mn/buenoBasic/infoList.do?con_cate=강아지 건강">- 강아지 건강</a></li>
                                                <li><a href="/mn/buenoBasic/infoCard.do?con_cate=견종백과">- 견종백과</a></li>
                                            </ul>
                                    </li>
                                    <li><a href="#">고양이</a>
                                            <ul class="dropdown">
                                                <li><a href="/mn/buenoBasic/infoCard.do?con_cate=고양이 음식">- 고양이 음식</a></li>
                                                <li><a href="/mn/buenoBasic/infoList.do?con_cate=고양이 행동">- 고양이 행동</a></li>
                                                <li><a href="/mn/buenoBasic/infoList.do?con_cate=고양이 건강">- 고양이 건강</a></li>
                                                <li><a href="/mn/buenoBasic/infoCard.do?con_cate=묘종백과">- 묘종백과</a></li>
                                            </ul>
                                    </li>
                                    <li><a href="#">커뮤니티</a>
                                        <ul class="dropdown">
                                            <li><a href="#">고양이</a></li>
                                            <li><a href="#">강아지</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">상품</a>
                                        <ul class="dropdown">
                                            <li><a href="/mn/buenoBasic/catagory.do">고양이</a></li>
                                            <li><a href="/mn/buenoBasic/catagory-post.do">강아지</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">편의기능</a>
                                        <ul class="dropdown">
                                            <li><a href="/mn/buenoBasic/catagory.do">AR 체험</a></li>
                                            <li><a href="/mn/buenoBasic/hospital.do">내 주변 동물병원</a></li>
                                            <li><a href="/mn/buenoBasic/single-post.do">사운드</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/mn/buenoBasic/single-post.do">반려동물</a></li>
                                </ul>

                                <!-- Login/Register -->
                                <div class="login-area">
                                    <a href="#">Login / Register</a>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### 내가 쓴 글 ##### -->
    <div class="treading-post-area" id="treadingPost">
        <div class="close-icon">
            <i class="fa fa-times"></i>
        </div>

        <h4>내가 쓴 글</h4>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="/mn/resources/bueno/img/bg-img/9.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

    </div>
    <!-- ##### Treading Post Area End ##### -->
      <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="/mn/resources/bueno/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/mn/resources/bueno/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/mn/resources/bueno/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="/mn/resources/bueno/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="/mn/resources/bueno/js/active_header.js"></script>
</body>
</html>
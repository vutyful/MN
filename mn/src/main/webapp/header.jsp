<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Favicon --> 
    <link rel="icon" href="./resources/idximg/icon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="./resources/bueno/style.css">
</head>
<body>
<header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area bg-img bg-overlay" style="background-image: url(./resources/idximg/header.jpg);">
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
                        <!-- <div class="top-search-area">
                            <form action="#" method="post">
                                <input type="search" name="top-search" id="topSearch" placeholder="Search">
                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area">
            <a href="/mn/index.jsp"><img src="./resources/idximg/logo2.png" alt=""></a>
        </div>

        <!-- Navbar Area -->
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="buenoNav">

                        <!-- Toggler -->
                        <div id="toggler"><img src="./resources/bueno/img/core-img/toggler.png" alt=""></div>

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
                                                <li><a href="buenoBasic/infoList.do">- 강아지 음식</a></li>
                                                <li><a href="buenoBasic/infoList.do">- 강아지 행동</a></li>
                                                <li><a href="buenoBasic/infoList.do">- 강아지 건강</a></li>
                                                <li><a href="buenoBasic/infoList.do">- 강아지 훈련</a></li>
                                                <li><a href="buenoBasic/infoCard.do">- 견종백과</a></li>
                                            </ul>
                                    </li>
                                    <li><a href="#">고양이</a>
                                            <ul class="dropdown">
                                                <li><a href="buenoBasic/infoList.do">- 고양이 음식</a></li>
                                                <li><a href="buenoBasic/infoList.do">- 고양이 행동</a></li>
                                                <li><a href="buenoBasic/infoList.do">- 고양이 건강</a></li>
                                                <li><a href="buenoBasic/infoCard.do">- 묘종백과</a></li>
                                            </ul>
                                    </li>
                                    <li><a href="#">커뮤니티</a>
                                <!--         <ul class="dropdown">
                                            <li><a href="/mn/buenoBasic/catagory.do">Catagory</a></li>
                                            <li><a href="/mn/buenoBasic/catagory-post.do">Catagory Post</a></li>
                                            <li><a href="/mn/buenoBasic/single-post.do">Single Post</a></li>
                                            <li><a href="/mn/buenoBasic/receipe.do">Recipe</a></li>
                                            <li><a href="/mn/buenoBasic/contact.do">Contact</a></li>
                                        </ul> -->
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
                                            <li><a href="/mn/buenoBasic/catagory-post.do">내 주변 동물병원</a></li>
                                            <li><a href="/mn/buenoBasic/single-post.do">사운드</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/mn/buenoBasic/single-post.do">반려동물</a></li>
                                    <li><a href="/mn/buenoBasic/contact.do">마이페이지(로그인 시 활성화)</a></li>
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
      <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="./resources/bueno/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="./resources/bueno/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="./resources/bueno/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="./resources/bueno/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="./resources/bueno/js/active.js"></script>
</body>
</html>
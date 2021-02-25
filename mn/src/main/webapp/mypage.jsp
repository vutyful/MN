<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>멍냥 마이페이지</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
     <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    
    <link rel="stylesheet" href="resources/main/style.css"> <!-- header -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="resources/mypage/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="resources/mypage/css/fullcalendar.min.css">
    <!-- https://fullcalendar.io/ -->
    <link rel="stylesheet" href="resources/mypage/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="resources/mypage/css/tooplate.css">
    
    <!-- 캘린더 Stylesheet -->
    <link href="resources/mypage/calendar/plugins/fullcalendar/css/fullcalendar.min.css" rel="stylesheet">
<!--     <link href="resources/mypage/calendar/css/style.css" rel="stylesheet"> -->
</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
<!--            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="#">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                            <h1 class="tm-site-title mb-0">Dashboard</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#">Dashboard
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Reports
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Daily Report</a>
                                        <a class="dropdown-item" href="#">Weekly Report</a>
                                        <a class="dropdown-item" href="#">Yearly Report</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="products.html">Products</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="accounts.html">Accounts</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Settings
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Profile</a>
                                        <a class="dropdown-item" href="#">Billing</a>
                                        <a class="dropdown-item" href="#">Customize</a>
                                    </div>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="login.html">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            row
            ##### Header Area Start #####
    <header class="header-area">

        Top Header Area
        <div class="top-header-area bg-img bg-overlay" style="background-image: url(resources/main/img/bg-img/header.jpg);">
           <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <div class="col-12 col-sm-6">
                        Top Social Info
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
                        Top Search Area
                        <div class="top-search-area">
                            <form action="#" method="post">
                                <input type="search" name="top-search" id="topSearch" placeholder="Search">
                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Logo Area
        <div class="logo-area">
            <a href="index.html"><img src="resources/main/img/core-img/logo.png" alt=""></a>
        </div>

        Navbar Area
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    Menu
                    <nav class="classy-navbar justify-content-between" id="buenoNav">

                        Toggler
                        <div id="toggler"><img src="resources/main/img/core-img/toggler.png" alt=""></div>

                        Navbar Toggler
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        Menu
                        <div class="classy-menu">

                            Close Button
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            Nav Start
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="catagory.html">Catagory</a></li>
                                            <li><a href="catagory-post.html">Catagory Post</a></li>
                                            <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="receipe.html">Recipe</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Recipes</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="single-post.html">Blog</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>

                                Login/Register
                                <div class="login-area">
                                    <a href="#" style="font-size:20px;">반려동물 등록</a>
                                </div>
                            </div>
                            Nav End

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    ##### Header Area End #####
    
    ##### Treading Post Area Start #####
    <div class="treading-post-area" id="treadingPost">
        <div class="close-icon">
            <i class="fa fa-times"></i>
        </div>

        <h4>Treading Post</h4>

        Single Blog Post
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            Blog Thumbnail
            <div class="blog-thumbnail">
                <img src="resources/main/img/bg-img/9.jpg" alt="">
            </div>
            Blog Content
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        Single Blog Post
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            Blog Thumbnail
            <div class="blog-thumbnail">
                <img src="resources/main/img/bg-img/10.jpg" alt="">
            </div>
            Blog Content
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Mushrooms with pork chop</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        Single Blog Post
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            Blog Thumbnail
            <div class="blog-thumbnail">
                <img src="resources/main/img/bg-img/11.jpg" alt="">
            </div>
            Blog Content
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Birthday cake with chocolate</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        Single Blog Post
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            Blog Thumbnail
            <div class="blog-thumbnail">
                <img src="resources/main/img/bg-img/9.jpg" alt="">
            </div>
            Blog Content
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        Single Blog Post
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            Blog Thumbnail
            <div class="blog-thumbnail">
                <img src="resources/main/img/bg-img/10.jpg" alt="">
            </div>
            Blog Content
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Mushrooms with pork chop</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        Single Blog Post
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            Blog Thumbnail
            <div class="blog-thumbnail">
                <img src="resources/main/img/bg-img/11.jpg" alt="">
            </div>
            Blog Content
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Birthday cake with chocolate</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>
    </div>
    ##### Treading Post Area End ##### -->
    
            <div class="row tm-content-row tm-mt-big">
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">최근 몸무게 그래프</h2>
                        <canvas id="lineChart"></canvas>
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">이번달 지출</h2>
                        <canvas id="barChart"></canvas>
                    </div>
                </div>
                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title" style="font-family: SDSamliphopangcheTTFBasic;">프로필</h2>
                        <h4 style="text-align: center;">멍멍이</h4>
                        <div style="margin-left:80px;">
	                        <div class="box">
	                        	<img class="profile" src="resources/mypage/img/멍뭉이.jpg">
	                        </div>
                        </div>
  	                       <table id="profile-tbl">
	                       	<tr>
	                       		<td>나이</td><td>1살</td>
	                       	</tr>
	                       	<tr>
	                       		<td>성별</td><td>남</td>
	                       	</tr>
	                       	<tr>
	                       		<td>목욕</td><td>10일 전</td>
	                       	</tr>
	                       	<tr>
	                       		<td>몸무게</td><td>1kg</td>
	                       	</tr>
	                       </table>
                       <!--  <canvas id="pieChart" class="chartjs-render-monitor"></canvas> -->
                    </div>
                </div>
				<!-- 오늘 해야할 일 시작 -->
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                            <div class="col-8">
                                <h2 class="tm-block-title d-inline-block">오늘 해야할 일</h2>

                            </div>
<!--                             <div class="col-4 text-right">
                                <a href="products.html" class="tm-link-black">더보기</a>
                            </div> -->
                        <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                산책 30분
                            </li>
                            <li class="tm-list-group-item">
                                목욕
                            </li>
                            <li class="tm-list-group-item">
                                모래 갈아주기
                            </li>
                            <li class="tm-list-group-item">
                                터그놀이 10분
                            </li>
                            <li class="tm-list-group-item">
                                얼굴 마사지
                            </li>
                            <li class="tm-list-group-item">
                                발톱 깎기
                            </li>
                            <li class="tm-list-group-item">
                               귀여워
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- 오늘 해야할 일 끝 -->
                
                <!-- 꼭 알아야 할 사항 시작 -->
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">꼭 알아야 할 사항!</h2>
                        <ol class="tm-list-group">
                            <li class="tm-list-group-item">강아지의 경우 너무 잦은 목욘은 좋지 않아요</li>
                            <li class="tm-list-group-item">산책은 강아지의 생명!</li>
                            <li class="tm-list-group-item">숨은 고양이를 찾을 땐 캔 따는 소리를 이용해요</li>
                            <li class="tm-list-group-item">캣타워는 AR 체험 후 실패없이 구매해용!</li>
                            
                            <li class="tm-list-group-item">Call customers</li>
                            <li class="tm-list-group-item">Go to meeting</li>
                            <li class="tm-list-group-item">Weekly plan</li>
                            <li class="tm-list-group-item">Ask for feedback</li>
                            
                            <li class="tm-list-group-item">Meet Supervisor</li>
                            <li class="tm-list-group-item">Company trip</li>
                        </ol>
                    </div>
                </div>
                <!-- 꼭 알아야 할 사항 끝 -->
                
                <!-- 사이드 광고 시작 -->
                <div class="tm-col tm-col-small">
                	<img src="resources/mypage/img/멍뭉이.jpg">
                   <!--  <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">사이드 광고</h2>
                        <ol class="tm-list-group">
                            <li class="tm-list-group-item">강아지의 경우 너무 잦은 목욘은 좋지 않아요</li>
                            <li class="tm-list-group-item">산책은 강아지의 생명!</li>
                            <li class="tm-list-group-item">숨은 고양이를 찾을 땐 캔 따는 소리를 이용해요</li>
                            <li class="tm-list-group-item">캣타워는 AR 체험 후 실패없이 구매해용!</li>
                            
                            <li class="tm-list-group-item">Call customers</li>
                            <li class="tm-list-group-item">Go to meeting</li>
                            <li class="tm-list-group-item">Weekly plan</li>
                            <li class="tm-list-group-item">Ask for feedback</li>
                            
                            <li class="tm-list-group-item">Meet Supervisor</li>
                            <li class="tm-list-group-item">Company trip</li>
                        </ol>
                    </div> -->
                </div>
                <!-- 사이드 광고 끝 -->
                
                <!-- 캘린더 시작-->
                <div class="tm-col tm-col-full">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">캘린더</h2>
                        <!-- <div id="calendar"></div> -->
                        
                        <!-- 캘린더 구조 시작 -->
                        <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
<!--                                 <div class="card-title">
                                    <h4>Calendar</h4>
                                </div> -->
                                <div class="row">
                                    <div class="col-lg-4 mt-5">
                                        <div id="external-events" class="m-t-20">
                                            <p>Drag and drop your event or click in the calendar</p>
                                            <div class="external-event bg-success text-white"  style="text-align: center;" data-class="bg-success"><i class="fa fa-move"></i>산책</div>
                                            <div class="external-event bg-primary text-white" style="text-align: center;" data-class="bg-primary"><i class="fa fa-move"></i>목욕</div>
                                            <div class="external-event bg-warning text-white" style="text-align: center;" data-class="bg-warning"><i class="fa fa-move"></i>심장사상충</div>
                                            <div class="external-event bg-dark text-white" style="text-align: center;" data-class="bg-dark"><i class="fa fa-move"></i>지출</div>
                                        </div>
                                        <!-- checkbox -->
                                        <div class="checkbox m-t-40">
                                            <input id="drop-remove" type="checkbox">
                                            <label for="drop-remove">Remove after drop</label>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-box m-b-50">
                                            <div id="calendar"></div>
                                        </div>
                                    </div>

                                    <!-- end col -->
                                    <!-- BEGIN MODAL -->
                                    <div class="modal fade none-border" id="event-modal">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><strong>Add New Event</strong></h4>
                                                </div>
                                                <div class="modal-body"></div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                                    <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Add Category -->
                                    <div class="modal fade none-border" id="add-category">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><strong>Add a category</strong></h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <label class="control-label">Category Name</label>
                                                                <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name">
                                                            </div>
                                                            <div class="col-md-6">
                                                                <label class="control-label">Choose Category Color</label>
                                                                <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                                    <option value="success">Success</option>
                                                                    <option value="danger">Danger</option>
                                                                    <option value="info">Info</option>
                                                                    <option value="pink">Pink</option>
                                                                    <option value="primary">Primary</option>
                                                                    <option value="warning">Warning</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END MODAL -->
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div>
                        <!-- 캘린더 구조 끝 -->
                    </div>
                </div>
                <!-- 캘린더 끝-->
               
                
            </div>
            <footer class="row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                        Copyright &copy; 2018. Created by
                        <a href="http://www.tooplate.com" class="text-white tm-footer-link">Tooplate</a> |  Distributed by <a href="https://themewagon.com" class="text-white tm-footer-link">ThemeWagon</a>
                    </p>
                </div>
            </footer>
        </div>
    </div>
    <!-- header JS-->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/main/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/main/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/main/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/main/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/main/js/active.js"></script>
    
    <!-- body JS -->
    <script src="resources/mypage/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="resources/mypage/js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="resources/mypage/js/utils.js"></script>
    <script src="resources/mypage/js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="resources/mypage/js/fullcalendar.min.js"></script>
    <!-- https://fullcalendar.io/ -->
    <script src="resources/mypage/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="resources/mypage/js/tooplate-scripts.js"></script>
    
    <!-- 캘린더 JS-->
    <script src="resources/mypage/calendar/plugins/common/common.min.js"></script>
    <script src="resources/mypage/calendar/js/custom.min.js"></script>
    <script src="resources/mypage/calendar/js/settings.js"></script>
    <script src="resources/mypage/calendar/js/gleek.js"></script>
    <script src="resources/mypage/calendar/js/styleSwitcher.js"></script>
    <script src="resources/mypage/calendar/plugins/jqueryui/js/jquery-ui.min.js"></script>
    <script src="resources/mypage/calendar/plugins/moment/moment.min.js"></script>
    <script src="resources/mypage/calendar/plugins/fullcalendar/js/fullcalendar.min.js"></script>
    <script src="resources/mypage/calendar/js/plugins-init/fullcalendar-init.js"></script>
    
    <script>
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart,
        barChart, pieChart;
        // DOM is ready
        $(function () {
            updateChartOptions();
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart
            drawCalendar(); // Calendar

            $(window).resize(function () {
                updateChartOptions();
                updateLineChart();
                updateBarChart();
                reloadPage();
            });
        })
        
        function drawLineChart() {
            if ($("#lineChart").length) {
                ctxLine = document.getElementById("lineChart").getContext("2d");
                optionsLine = {
                    scales: {
                        yAxes: [
                            {
                                scaleLabel: {
                                    display: true,
                                    labelString: "Hits"
                                }
                            }
                        ]
                    }
                };

                // Set aspect ratio based on window width
                optionsLine.maintainAspectRatio =
                    $(window).width() < width_threshold ? false : true;

                configLine = {
                    type: "line",
                    data: {
                        labels: [
                            "January",
                            "February",
                            "March",
                            "April",
                            "May",
                            "June",
                            "July"
                        ],
                        datasets: [
                            {
                                label: "Popular Hits",
                                data: [33, 45, 37, 21, 55, 74, 69],
                                fill: false,
                                borderColor: "rgba(255,99,132,1)",
                                lineTension: 0.1
                            }
                        ]
                    },
                    options: optionsLine
                };

                lineChart = new Chart(ctxLine, configLine);
            }
        }
        
    </script>
</body>
</html>
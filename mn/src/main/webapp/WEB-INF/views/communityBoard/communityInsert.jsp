<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>게시판등록</title>

<!-- Favicon -->
<link rel="icon" href="resources/bueno/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="resources/bueno/style.css" type='text/css'>
<!-- summernote-dist -->
<link rel="stylesheet"
	href="resources/summernote-dist/summernote-lite.css">

<!-- summernote-dist -->
<link href="resources/summernote-dist/summernote.css" rel="stylesheet"
	type="text/css" />
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">



</head>

<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-content">
			<h3>Cooking in progress..</h3>
			<div id="cooking">
				0
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div id="area">
					<div id="sides">
						<div id="pan"></div>
						<div id="handle"></div>
					</div>
					<div id="pancake">
						<div id="pastry"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area">

		<!-- Top Header Area -->
		<div class="top-header-area bg-img bg-overlay"
			style="background-image: url(resources/bueno/img/bg-img/header.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center justify-content-between">
					<div class="col-12 col-sm-6">
						<!-- Top Social Info -->
						<div class="top-social-info">
							<a href="#" data-toggle="tooltip" data-placement="bottom"
								title="Pinterest"><i class="fa fa-pinterest"
								aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip"
								data-placement="bottom" title="Facebook"><i
								class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="bottom" title="Twitter"><i
								class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i
								class="fa fa-dribbble" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="bottom" title="Behance"><i
								class="fa fa-behance" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i
								class="fa fa-linkedin" aria-hidden="true"></i></a>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-lg-5 col-xl-4">
						<!-- Top Search Area -->
						<div class="top-search-area">
							<form action="#" method="post">
								<input type="search" name="top-search" id="topSearch"
									placeholder="Search">
								<button type="submit" class="btn">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Logo Area -->
		<div class="logo-area">
			<a href="index.jsp"><img
				src="resources/bueno/img/core-img/logo.png" alt=""></a>
		</div>

		<!-- Navbar Area -->
		<div class="bueno-main-menu" id="sticker">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between" id="buenoNav">

						<!-- Toggler -->
						<div id="toggler">
							<img src="resources/bueno/img/core-img/toggler.png" alt="">
						</div>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">

							<!-- Close Button -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li><a href="index.jsp">Home</a></li>
									<li><a href="#">About Us</a></li>
									<li><a href="#">커뮤니티</a>
										<ul class="dropdown">
											<li><a href="index.jsp">Home</a></li>
											<li><a href="catagory.jsp">Catagory</a></li>
											<li><a href="catagory-post.jsp">Catagory Post</a></li>
											<li><a href="board.jsp">게시글</a></li>
											<li><a href="receipe.jsp">Recipe</a></li>
											<li><a href="contact.jsp">Contact</a></li>
										</ul></li>
									<li><a href="single-post.jsp">Blog</a></li>
									<li><a href="contact.jsp">Contact</a></li>
								</ul>

								<!-- Login/Register -->
								<div class="login-area">
									<a href="#">Login / 반려동물등록하기</a>
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

	<!-- ##### Treading Post Area Start ##### -->
	<div class="treading-post-area" id="treadingPost">
		<div class="close-icon">
			<i class="fa fa-times"></i>
		</div>

		<h4></h4>
		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="resources/bueno/img/bg-img/9.jpg" alt="">
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">The Best</a> <a href="#"
					class="post-title"></a>
				<div class="post-meta">
					<a href="#" class="post-date"></a> <a href="#" class="post-author"></a>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="resources/bueno/img/bg-img/10.jpg" alt="">
			</div>
			<!-- Blog Content -->
			<div class="blog-content">
				<a href="#" class="post-tag">The Best</a> <a href="#"
					class="post-title"></a>
				<div class="post-meta">
					<a href="#" class="post-date"></a> <a href="#" class="post-author"></a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Treading Post Area End ##### -->

	<!-- ##### Search Area Start ##### -->
	<div class="bueno-search-area section-padding-100-0 pb-70 bg-img"
		style="background-image: url(resources/bueno/img/core-img/pattern.png);">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<form action="#" method="post">
						<div class="row">
							<div class="col-12 col-sm-6 col-lg-3"></div>

							<div class="col-12 col-sm-6 col-lg-3"></div>
							<div class="col-12 col-sm-6 col-lg-3"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Search Area End ##### -->

	<section class="post-news">
		<div class="container">
			<div class="row justify-content-center">
				<!--con-content 게시판 내용 입력 -->
				<div class="col-12 col-lg-8 col-xl-9">
					<div class="mb-100">
						<div class="blog-thumbnail mb-50">
							<!-- <img src="resources/bueno/img/bg-img/cat_shower.png" alt=""> -->
						</div>
						<!-- summernote -->
						<form action="CommunityInsert.do"method="post">
							<h4 class="mb-50">게시판 등록하기</h4>

							<input placeholder="제목을 입력해 주세요." name="bo_title"
								id="bo_title" style="height: 50px; width: 100%"></input>
							<!-- summernote  -->
							<textarea id="summernote" name="bo_content"></textarea>

							<div class="col-12">
								<input id="insert_btn" class="btn bueno-btn mt-30"
									type="submit" value="등록">
								<input id="del_btn" class="btn bueno-btn mt-30" type="submit" value="삭제"></input>
							</div>
						</form>

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
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8 col-xl-9">
				<div class="mb-100"></div>
			</div>
		</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->
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
<script src="/mn/resources/bueno/js/active.js"></script>
<!--summernote js  -->
<script src="/mn/resources/summernote-dist/summernote-lite.js"></script>
<script src="/mn/resources/summernote-dist/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">

$(function() {
	
	//등록버튼을 눌렀을 시
	$('#insert_btn').click(function () {
		alert("커뮤니티 등록")
	});
	
	
	//summernote
$(function (){
    $('#summernote').summernote({
        height: 800,
        minHeight: 600,
        maxHeight: null,
        codemirror: {
            theme: 'default'
        }
    });
})

})
</script>
</body>
</html>
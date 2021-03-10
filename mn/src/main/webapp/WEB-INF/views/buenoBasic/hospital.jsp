<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file = "/header.jsp" %>

<style type="text/css">
a:hover, a:focus
{ 
  font-size: 12px;
}
</style>
<!-- 지도 css -->
<link rel="stylesheet" href="../resources/bueno/hospitalmap.css">




	<!-- ##### Contact Area Start ##### -->
	<section class="contact-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8 col-xl-9">
					<div class="contact-content mb-100">
						<h2 class="mb-50" style="text-align: center;">지역별 동물병원</h2>
					</div>
				</div>
			</div>


			<div class="map_wrap">
				<div id="map"
					style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

				<div id="menu_wrap" class="bg_white">
					<div class="option">
						<div>
							<form onsubmit="searchPlaces(); return false;">

								<select name="keyword" id="keyword" >
									<option value="가산디지털단지 동물병원" selected="selected">가산디지털단지 동물병원</option>
									<option value="구로 동물병원">구로 동물병원</option>
									<option value="강남역 동물병원">강남 동물병원</option>
									<option value="인천시청 동물병원">인천시청 동물병원</option>
									<option value="신도림 동물병원">신도림 동물병원</option>
									<option value="온수역 동물병원">온수역 동물병원</option>
									<option value="경기도 성남 동물병원">경기도 성남 동물병원</option>
								</select> <br />
								<button type="submit">검색하기</button>
							</form>
						</div>
					</div>
					<hr>
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
			<br></br> <br></br> <br></br>
			<!-- Contact Form Area -->
			<div class="contact-form-area mb-70">
				<h4 class="mb-50">동물병원 관련 광고 넣을 예정</h4>
			</div>

		</div>
		</div>
		<!-- 
		<div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
			<div class="sidebar-area">

				Single Widget Area
				<div class="single-widget-area author-widget mb-30">
					<div class="background-pattern bg-img"
						style="background-image: url(img/core-img/pattern2.png);">
						<div class="author-thumbnail">
							<img src="img/bg-img/23.jpg" alt="">
						</div>
						<p>
							My name is <span>Jessica Smith</span>, I’m a passionate cook with
							a love for vegan food.
						</p>
					</div>
					<div class="social-info">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					</div>
				</div>

				Single Widget Area
				<div class="single-widget-area add-widget mb-30">
					<img src="img/bg-img/add.png" alt="">
				</div>

				Single Widget Area
				<div class="single-widget-area post-widget mb-30">
					Single Post Area
					<div class="single-post-area d-flex">
						Blog Thumbnail
						<div class="blog-thumbnail">
							<img src="img/bg-img/12.jpg" alt="">
						</div>
						Blog Content
						<div class="blog-content">
							<a href="#" class="post-title">Friend eggs with ham</a>
							<div class="post-meta">
								<a href="#" class="post-date">July 11, 2018</a> <a href="#"
									class="post-author">By Julia Stiles</a>
							</div>
						</div>
					</div>

					Single Post Area
					<div class="single-post-area d-flex">
						Blog Thumbnail
						<div class="blog-thumbnail">
							<img src="img/bg-img/13.jpg" alt="">
						</div>
						Blog Content
						<div class="blog-content">
							<a href="#" class="post-title">Burger with fries</a>
							<div class="post-meta">
								<a href="#" class="post-date">July 11, 2018</a> <a href="#"
									class="post-author">By Julia Stiles</a>
							</div>
						</div>
					</div>

					Single Post Area
					<div class="single-post-area d-flex">
						Blog Thumbnail
						<div class="blog-thumbnail">
							<img src="img/bg-img/14.jpg" alt="">
						</div>
						Blog Content
						<div class="blog-content">
							<a href="#" class="post-title">Avocado &amp; Oisters</a>
							<div class="post-meta">
								<a href="#" class="post-date">July 11, 2018</a> <a href="#"
									class="post-author">By Julia Stiles</a>
							</div>
						</div>
					</div>

					Single Post Area
					<div class="single-post-area d-flex">
						Blog Thumbnail
						<div class="blog-thumbnail">
							<img src="img/bg-img/15.jpg" alt="">
						</div>
						Blog Content
						<div class="blog-content">
							<a href="#" class="post-title">Tortilla prawns</a>
							<div class="post-meta">
								<a href="#" class="post-date">July 11, 2018</a> <a href="#"
									class="post-author">By Julia Stiles</a>
							</div>
						</div>
					</div>

					Single Post Area
					<div class="single-post-area d-flex">
						Blog Thumbnail
						<div class="blog-thumbnail">
							<img src="img/bg-img/16.jpg" alt="">
						</div>
						Blog Content
						<div class="blog-content">
							<a href="#" class="post-title">Burger with fries</a>
							<div class="post-meta">
								<a href="#" class="post-date">July 11, 2018</a> <a href="#"
									class="post-author">By Julia Stiles</a>
							</div>
						</div>
					</div>
				</div>

				Single Widget Area
				<div class="single-widget-area newsletter-widget mb-30">
					<h6>Subscribe to newsletter</h6>
					<form action="#" method="post">
						<input type="search" name="widget-search" id="widgetSearch"
							placeholder="E-mail">
						<button type="submit" class="btn bueno-btn w-100">Subscribe</button>
					</form>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
			</div> -->

		</div>
		</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->

	<!-- ##### Instagram Area Start ##### -->
	<div class="instagram-feed-area d-flex flex-wrap">
		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta1.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta1.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta2.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta2.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta3.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta3.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta4.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta4.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta5.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta5.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta6.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta6.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta7.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta7.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta8.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta8.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta9.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta9.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>

		<!-- Single Instagram -->
		<div class="single-instagram">
			<img src="img/bg-img/insta10.jpg" alt="">
			<!-- Image Zoom -->
			<a href="img/bg-img/insta10.jpg" class="img-zoom"
				title="Instagram Image">+</a>
		</div>
	</div>
	<!-- ##### Instagram Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-5">
					<!-- Copywrite Text -->
					<p class="copywrite-text">
						<a href="#"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script> All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
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

	<!-- 지도 js파일 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=934d6274004469e809ca51645ec76eab&libraries=services"></script>

	<script src="../resources/bueno/js/map.js"></script>

</body>

</html>
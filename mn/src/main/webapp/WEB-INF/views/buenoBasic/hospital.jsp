<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>

<style type="text/css">
a:hover, a:focus {
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
					<h2 class="mb-50" style="text-align: center;">동물병원 검색</h2>
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

							<!-- 사이트이용자에게 편의성을 제공하기 위해 사이트 내에서 병원찾기 기능 제공
		카카오맵 API르 바꿔서 검색창을 셀렉트박스한 이유는 이용자가 검색하기 편하게 몇가지 임의의 선택지들을 제공한것
		국내 전지역과 전 구로 셀렉트박스를 구성해도 됫음. 검색 후 병원목록이 나오면 병원명 클릭스 해당 카카오지도 사이트 상세정보페이지로 연결.-->

							<select name="keyword" id="keyword" onChange="searchPlaces();">
								<option value="가산디지털단지 동물병원">가산디지털단지 동물병원</option>
								<option value="서울 구로구 동물병원">서울 구로구 동물병원</option>
								<option value="서울 노원구 동물병원">서울 노원구 동물병원</option>
								<option value="서울 강남구 동물병원">서울 강남구 동물병원</option>
								<option value="인천 남동구 동물병원">인천 남동구 동물병원</option>
								<option value="부산 중구 동물병원">부산 중구 동물병원</option>
								<option value="강원도 춘천시 동물병원">강원도 춘천시 동물병원</option>
								<option value="경기도 성남 동물병원">경기도 성남 동물병원</option>
							</select>
							<!-- 	<button type="submit">검색하기</button> -->
						</form>
					</div>
					<br />
				</div>
				<br />
				<hr>
				<ul id="placesList"></ul>
				<div id="pagination"></div>
			</div>
		</div>
		<br></br> <br></br> <br></br>
		<!-- Contact Form Area -->
<!-- 		<div class="contact-form-area mb-70">
			<h4 class="mb-50">동물병원 관련 광고 넣을 예정</h4>
		</div> -->

	</div>
	</div>


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
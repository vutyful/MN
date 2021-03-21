<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>반려동물등록</title>

<!--메인 헤더 부분-->
<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/favicon.ico">
<!-- Stylesheet -->
<link rel="stylesheet" href="resources/style.css">

<!-- account 기본 ui -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<!-- https://fonts.google.com/specimen/Open+Sans -->
<link rel="stylesheet" href="resources/css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="resources/css/tooplate.css">
</head>

<body>
	<!--메인코드 추가  -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-xl navbar-light bg-light">
						<a class="navbar-brand" href="login.jsp"> <i
							class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
							<h1 class="tm-site-title mb-0">멍냥이</h1>
						</a>
						<button class="navbar-toggler ml-auto mr-0" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mx-auto">
								<li class="nav-item"><a class="nav-link" href="login.jsp">Dashboard
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="index.jsp"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Reports </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="#">Daily Report</a> <a
											class="dropdown-item" href="#">Weekly Report</a> <a
											class="dropdown-item" href="index.jsp">Yearly Report</a>
									</div></li>
								<li class="nav-item"><a class="nav-link"
									href="products.jsp">Products</a></li>

								<li class="nav-item active"><a class="nav-link" href="#">반려동물등록</a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Settings </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="#">Profile</a> <a
											class="dropdown-item" href="#">Billing</a> <a
											class="dropdown-item" href="#">Customize</a>
									</div></li>
							</ul>
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link d-flex"
									href="login.jsp"> <i
										class="far fa-user mr-2 tm-logout-icon"></i> <span>Logout</span>
								</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!-- row -->
			<div class="row tm-content-row tm-mt-big">
				<div class="tm-col tm-col-big" >

				</div>
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block">
						<div class="row">
							<div class="col-12">
								<h2 class="tm-block-title">내반려동물 등록하기</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<form action="" class="tm-signup-form">
									<div class="form-group">
										<label for="pet_name">이름</label> <input
											placeholder="이름을 입력하세요" id="pet_name" name="pet_name"
											type="text" class="form-control validate">
								    									<!-- 생년등록 -->
									<div id="cid_33" class="form-input jf-required">
										<label for="pet_birthday">생년월일</label>
										<div data-wrapper-react="true">
											<span class="form-sub-label-container"
												style="vertical-align: top"> <select
												name="q33_dateRequired[month]" id="input_33_month"
												class="form-dropdown validate[required]"
												data-component="birthdate-month"
												aria-labelledby="label_33 sublabel_33_month">
													<option></option>
													<option value="January">January</option>
													<option value="February">February</option>
													<option value="March">March</option>
													<option value="April">April</option>
													<option value="May">May</option>
													<option value="June">June</option>
													<option value="July">July</option>
													<option value="August">August</option>
													<option value="September">September</option>
													<option value="October">October</option>
													<option value="November">November</option>
													<option value="December">December</option>
											</select> <label class="form-sub-label" for="input_33_month"
												id="sublabel_33_month" style="min-height: 13px"
												aria-hidden="false"> Month </label>
											</span> <span class="form-sub-label-container"
												style="vertical-align: top"> <select
												name="q33_dateRequired[day]" id="input_33_day"
												class="form-dropdown validate[required]"
												data-component="birthdate-day"
												aria-labelledby="label_33 sublabel_33_day">
													<option></option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
											</select> <label class="form-sub-label" for="input_33_day"
												id="sublabel_33_day" style="min-height: 13px"
												aria-hidden="false"> Day </label>
											</span> <span class="form-sub-label-container"
												style="vertical-align: top"> <select
												name="q33_dateRequired[year]" id="input_33_year"
												class="form-dropdown validate[required]"
												data-component="birthdate-year"
												aria-labelledby="label_33 sublabel_33_year">
													<option></option>
													<option value="2021">2021</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
											</select> <label class="form-sub-label" for="input_33_year"
												id="sublabel_33_year" style="min-height: 13px"
												aria-hidden="false"> Year </label>
											</span>
										</div>
									</div>
								    			
									</div>
									<div class="form-group">
										<label for="pet_dogcat">종</label> <input
											placeholder="고양이 or 강아지를 입력하세요" id="pet_dogcat"
											name="pet_dogcat" type="text" class="form-control validate">
									</div>
									<div class="form-group">
										<label for="pet_kind">품종</label> <input
											placeholder="무슨 품종인가요?" id="pet_kind" name="pet_kind"
											type="text" class="form-control validate">
									</div>
									
									<div class="form-group">
										<label for="pet_check">등록여부</label> <input
											placeholder="등록되어있나요??" id="pet_check" name="pet_check"
											type="text" class="form-control validate">
									</div>

									<div class="row">
										<div class="col-12 col-sm-4">
											<button type="submit" class="btn btn-primary">등록하기</button>
										</div>
										<div class="col-12 col-sm-8 tm-btn-right">
											<button type="submit" class="btn btn-danger">무지개다리</button>
										</div>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="tm-col tm-col-small">
					<div class="bg-white tm-block">
						<h2 class="tm-block-title">사진등록하기</h2>
						<img src="resources/img/jero.png" alt="Profile Image"
							class="img-fluid">
						<div class="custom-file mt-3 mb-3">
							 <input id="fileInput" type="file" style="display:none;" />
                        <input type="button" class="btn btn-primary d-block mx-xl-auto" value="사진올리기" onclick="document.getElementById('fileInput').click();"
                        />
						</div>
					</div>
				</div>
			</div>
			<footer class="row tm-mt-small">
				<div class="col-12 font-weight-light">
					<p class="d-inline-block tm-bg-black text-white py-2 px-4">
						Copyright &copy; 2018. Created by <a
							href="http://www.tooplate.com" class="text-white tm-footer-link">Tooplate</a>
						| Distributed by <a href="https://themewagon.com"
							class="text-white tm-footer-link">ThemeWagon</a>
					</p>
				</div>
			</footer>
		</div>

		<script src="resources/js/jquery-3.3.1.min.js"></script>
		<!-- https://jquery.com/download/ -->
		<script src="resources/js/bootstrap.min.js"></script>
		<!-- https://getbootstrap.com/ -->
</body>

</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login Page</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<!-- https://fonts.google.com/specimen/Open+Sans -->
<link rel="stylesheet"
	href="resources/dashboard/css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="resources/dashboard/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="resources/dashboard/css/tooplate.css"
	type='text/css'>

<script src="resources/dashboard/js/jquery-3.3.1.min.js"
	type="text/javascript"></script>
<script src="resources/dashboard/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- 카카오톡 js -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- validate 유효성  -->
<script src="resources/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- jquery 시작 -->
</head>

<body class=" ">
	<div class="container">
		<div class="row tm-mt-big">
			<div class="col-12 mx-auto tm-login-col">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-12 text-center">
							<a href=index.jsp><i
								class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i></a>
							<h2 class="tm-block-title mt-3">Login</h2>
							<!-- 일반회원가입 -->
							<form action="/mn/login.do" method="post">
								<div class="input-group">
									<label for="Mem_id"
										class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Email</label>
									<input name="Mem_id" type="text"
										class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
										id="Mem_id" placeholder="e-mail 커몽." required>
								</div>
								<div class="input-group mt-3">
									<label for="mem_pass"
										class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Password</label>
									<input name="mem_pass" type="password"
										class="form-control validate" id="mem_pass"
										placeholder="비밀번호 커몽" required>
								</div>

								<div class="input-group mt-3">
									<input type="submit" id="login_btn" class="login_btn"
										class="btn btn-primary d-inline-block mx-auto" value='login'>
								</div>
							</form>

							<!-- 일반회원가입 -->
							<div class="input-group mt-3"></div>
						</div>

					</div>
					<div class="row mt-2">
						<div class="col-12">
							<!-- <form action=" " method="post" class="tm-login-form"> -->

							<div class="input-group mt-3"></div>
							<div class="input-group mt-3">
								<a href=Register.jsp><em>회원가입하기</em></a>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="row tm-mt-big">
			<div class="col-12 font-weight-light text-center">
				<p class="d-inline-block tm-bg-black text-white py-2 px-4">
					멍냥이네 &copy; 2021. 김박한송민 family <a href="http://www.tooplate.com"
						class="text-white tm-footer-link">대박나라</a> | 환영합니다 <a
						href="https://themewagon.com" class="text-white tm-footer-link">어서오세요</a>
				</p>
			</div>
		</footer>
	</div>
	<!-- 	<!-- 카카오톡 버튼 이미지 -->
	<p id="token-result"></p>
	<a id="kakao-login-btn" href="javascript:createLoginButton()"> <img
		src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
		width="222" />
	</a>

	<script type="text/javascript">
	
		$(function () {
			
			

		});
		
/*  		window.Kakao.init("b5962eb8bac4b1582f7add2df8a18c37");

		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) {
						alert(JSON.stringify(res))

						var username = res.id; //유저의 카카오톡 고유 id
						var m_Email = res.kakao_account.email; //유저의 이메일
						var m_Name = res.properties.nickname; //유저가 등록한 별명

						console.log(username);
						console.log(m_Email);
						console.log(m_Name);

						var objPrmtr = new Object(); //key, value형태로 저장할 Object

						objPrmtr.username = username;
						objPrmtr.m_Email = m_Email;
						objPrmtr.m_Name = m_Name;
						//여기까지가 계정 정보를 받아온거니까.
						
						//뭐로비교하지 
						
						/* $.ajax({
							type : 'post',
							url : '/mn/userInsertKaKao.do',
							contentType : 'application/json; charset=UTF-8',
							traditional : true,
							data : JSON.stringify(objPrmtr),
							dataType : 'json',
							success : function(data) {
								alert('로그인이 완료 되었습니다.');
								location.href = "/index.jsp";
							},
							error : function(err) {
								//err msg 출력
								alert("로그인 실패하였습니다.");

								console.log(err)
							}
						}) 
					},
					fail : function(error) {
						alert("로그인 실패하였습니다.");
						//   alert(JSON.stringify(error));
					}
				});
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
		  */
		
		
		
	</script>

</body>
</html>






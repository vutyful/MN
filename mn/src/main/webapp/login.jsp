<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Page</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="resources/dashboard/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/tooplate.css" type = 'text/css'>
</head>

<body class=" ">
    <div class="container">
        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
                            <h2 class="tm-block-title mt-3">Login</h2>
                            <!-- 카카오톡 로그인 연동 -->
                             <a href="javascript:kakaoLogin();"><img src="https://www.gb.go.kr/Main/Images/ko/member/certi_kakao_login.png"style="height:60px;width:auto;"></a>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <form action="login.jsp" method="post" class="tm-login-form">

                                <div class="input-group mt-3">
                                </div>
                                <div class="input-group mt-3">
                                    <p><em></em></p>
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
                 멍냥이네 &copy; 2021. 김박한송민 family
                <a href="http://www.tooplate.com" class="text-white tm-footer-link">대박나라</a> |  환영합니다 <a href="https://themewagon.com" class="text-white tm-footer-link">어서오세요</a>
                </p>
            </div>
        </footer>
    </div>
</body>
</html>
<!-- 카카오톡 js -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>

 //사용할 앱의 javaScript 키를 설정
 window.Kakao.init("b5962eb8bac4b1582f7add2df8a18c37");
 
 function kakaoLogin(){
	 window.Kakao.Auth.login({
		 //로그인 성공시, API를 호출 
		 scope:'profile,account_email',
		 success: function(authObj){
			 console.log(authObj);
			 window.Kakao.API.request({
				 url:'/v2/user/me',
				 success: res => {
					 const kakao_account = res.kakao_account;
					 console.log(kakao_account);

				 }
			 });
			 
		 }
 
	 });
 }
 
 
 
 
 
</script>

<script>



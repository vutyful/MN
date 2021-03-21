<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<!-- 네이버 로그인 필요 js -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!-- 카카오 로그인 필요 js -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>


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
<!-- 로그인 css -->	
<link rel="stylesheet" href="./resources/login/style.css">
<style type="text/css">

body{
background-color: white;
}

@font-face{
	font-family: "esamanru";
	src: url("resources/bueno/fonts/esamanru Light.ttf");
}

button{
	font-family: esamanru;
	text-align: center;
}

#kakao-login-btn{
	margin-top: 10px; 
	margin-left: 15px;
}

#naverIdLogin > a > img{
	width: 222px;
	height: 49px;
	margin-left: 30px;
}

#register > input{
	font-size: 15px;
}


</style>
</head>

<body>

  <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="all_btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">&nbsp;&nbsp;&nbsp;&nbsp;로그인</button>
                    <button type="button" class="togglebtn" onclick="register()">회원가입</button>
                </div>
                <form id="login" action="/mn/login.do" method="post" class="input-group">
                    <input id="mem_email" name="mem_email" value='sachawon@gmail.com' type="text" class="input-field" placeholder="아이디:jingang@gmail.com" required>                  
                    <input name="mem_pass"  type="password" value='aaa111!!' class="input-field" placeholder="비번:aaa111!!" required="">
                   
                    <button id="last_login_btn"class="submit" style="margin-top: 20px;">로그인</button>
                    <!-- 네이버아이디로로그인 버튼 노출 영역 -->
                    <div id="naverIdLogin" style="margin-top: 30px;"></div>
                    <!-- 카카오계정으로 로그인 버튼 노출 영역 -->
                    <a id="kakao-login-btn"></a>
  					<a href="http://developers.kakao.com/logout"></a>
                </form>
                <!-- <p id="token-result"></p> -->
	
                <form id="register" action="/mn/registJoin.do" class="input-group">
                    <input type="text" id="mem_name" name="mem_name" class="input-field" placeholder="닉네임을 입력하세요" required="">
                    
                    <div id = "mem_name_check"></div>
                    
                    <input type="password" id="mem_pass" name="mem_pass" class="input-field" placeholder="비밀번호(소문자,특수문자,숫자 포함 5자)" required="">
                    <input placeholder="비밀번호 확인" id="mem_pass_ck" type="password"  class="input-field">
                    <div id = "mem_pass_check"></div>
                    
                    <input type="email"id="mem_email" name="mem_email" class="input-field" placeholder="이메일을 입력하세요" required="">
                    <div id = "mem_email_check"></div>
                   <!--  <button type="button" class="id_overlap_button" onclick="id_check()">중복검사</button>
                    <img id="id_check_sucess" style="display: none;"> -->
                    
                    
                    <input placeholder="핸드폰 번호를 입력하세요('-' 제외)"name="mem_tel" type="tel" class="input-field">
                    <div id = "mem_tel_check"></div>
                    <button id="last_register_btn" name="last_register_btn"class="submit" style="margin-top: 20px;">가입하기</button>
                </form>
        </div>
            
        </div>
	</div>
	<!-- 	<!-- 카카오톡 버튼 이미지 -->
	
<script src="resources/dashboard/js/jquery-3.3.1.min.js"
	type="text/javascript"></script>
<script src="resources/dashboard/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- 카카오톡 js -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- validate 유효성  -->
<script src="resources/js/jquery.validate.min.js" type="text/javascript"></script>

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "aCUzCh7VHWRdUn3uzB77",
			callbackUrl: "http://192.168.0.79:8080/mn/naverLogin.jsp",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
</script>

<!-- 카카오톡 로그인 -->
<script type="text/javascript">
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('965db0eb53584dc6dd507e3f0ba041f9');
// 카카오 로그인 버튼을 생성합니다.
Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn',
    success: function (authObj) {
        console.log(JSON.stringify(authObj));
        // access_token으로 사용자 정보 요청하기
    	Kakao.API.request({
			url : '/v2/user/me',
			success : function(res) {
				var mem_email = res.kakao_account.email; //유저의 이메일
				
				window.location.replace("http://"+window.location.hostname + 
						((location.port==""||location.port==undefined)?"":":"+location.port)+
						"/mn/buenoBasic/main.do?mem_email="+mem_email); 
				}
			})
    },
    fail: function (err) {
        alert(JSON.stringify(err));
    }
});

</script>

<!-- jquery 시작 -->
<script type="text/javascript">
	
    var loginBtn = document.getElementById("login");
    var registerBtn = document.getElementById("register");
    var all_btn = document.getElementById("all_btn");
    
    
    function login(){
    	loginBtn.style.left = "50px";
    	registerBtn.style.left = "450px";
    	all_btn.style.left = "0";
    }

    function register(){
    	loginBtn.style.left = "-400px";
    	registerBtn.style.left = "50px";
    	all_btn.style.left = "110px";
    }
    

    
		
	//회원가입 & 로그인
	$(function() {
 		//회원가입 form에 기입을 배열로 처리하여 입력 여부 결정
 		var inval_Arr = new Array(4).fill(false);   //Array()안에 숫자는 fill함수 안에 인자 값의 수 
 		// 한글 또는 영문 사용하기(혼용X)
 		var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
 		// 이메일 정규식 
 		var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //정규식
 		// 휴대폰 번호 정규식
 		var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
 		// 비밀번호 정규식
 		var pwJ = /^.*(?=^.{5,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; //비번 정규식 다시 확인
 		
		
 		//이름 정규식 확인
 		$("#mem_name").blur(function() {  //blur() 포커스빠져나갔을때 나타나는 메서드
			if (nameJ.test($(this).val())) {	//test() 메서드는 주어진 문자열이 정규 표현식을 만족하는지 판별하고, 그 여부를 true 또는 false로 반환합니다.
					console.log(nameJ.test($(this).val()));
					$("#mem_name_check").text('');
			} else {
				$('#mem_name_check').text('이름을 확인해주세요');
				$('#mem_name_check').css('color', 'red');
			}
		});
 		
 		//비밀번호 정규식 확인
 		$("#mem_pass").blur(function() {  //blur() 포커스빠져나갔을때 나타나는 메서드
			if (pwJ.test($(this).val())) {	//test() 메서드는 주어진 문자열이 정규 표현식을 만족하는지 판별하고, 그 여부를 true 또는 false로 반환합니다.
					console.log(pwJ.test($(this).val()));
					$("#mem_pass_check").text('');
			} else {
				$('#mem_pass_check').text('비밀번호를 확인해주세요');
				$('#mem_pass_check').css('color', 'red');
			}
		});
 		
  		//이메일 정규식 확인
 		$("#mem_email").blur(function() {  //blur() 포커스빠져나갔을때 나타나는 메서드
			if (mailJ.test($(this).val())) {	//test() 메서드는 주어진 문자열이 정규 표현식을 만족하는지 판별하고, 그 여부를 true 또는 false로 반환합니다.
					console.log(mailJ.test($(this).val()));
					$("#mem_email_check").text('');
			} else {
				$('#mem_email_check').text('이메일을 확인해주세요');
				$('#mem_email_check').css('color', 'red');
			}
		}); 
 		
 		
 		//휴대폰 정규식 확인
 		$("#mem_tel").blur(function() {  
			if (phoneJ.test($(this).val())) {	//위에서 정규식을 선언한 변수로 test()메서드를 사용하여 정보를 받아옴
					console.log(phoneJ.test($(this).val()));
					$("#mem_tel_check").text('');
			} else {
				$('#mem_tel_check').text('휴대폰 번호를 확인해주세요');
				$('#mem_tel_check').css('color', 'red');
			}
		});
 		

 		//가입하기 버튼 클릭했을때 
	 	$('.last_register_btn').click(function(){
	 		/* $('#mem_pass').val() */
	 		console.log($('#mem_pass').val())
	 		
	 				// 이름에 특수문자 들어가지 않도록 설정

	
			// 이름 정규식
			if (nameJ.test($('#mem_name').val())) {
				inval_Arr[0] = true;	
			} else {
				inval_Arr[0] = false;
			}
 	 		//비밀번호 입력시 비교 확인 
			if (pwJ.test($('#mem_pass').val())==pwJ.test($('#mem_pass_ck').val())){
				console.log(pwJ.test($('#mem_pass').val()))
				console.log(pwJ.test($('#mem_pass_ck').val()))
				alert("비밀번호가 일치함")
				inval_Arr[1] = true;
			} else {
				alert("비밀번호가 일치하지 않습니다")
				$('#mem_pass').val("");
 	 			$('#mem_pass_ck').val("");
				inval_Arr[1] = false;
			}	

			// 이메일 정규식 (회원로그인 아이디가 되는 부분)
			if (mailJ.test($('#mem_email').val())){
				console.log(phoneJ.test($('#mem_email').val()));
				inval_Arr[2] = true;
			} else {
				inval_Arr[2] = false;
			}	
			
 	 		
			// 휴대폰 정규식
			if (phoneJ.test($('#mem_tel').val())){
				console.log(phoneJ.test($('#mem_tel').val()));
				inval_Arr[3] = true;
			} else {
				inval_Arr[3] = false;
			}	
 	 		
			//회원가입 form에 정보를 배열로 처리하여 배열 수에 맞춰서 submit 함
			var validAll = true;
			for(var i = 0; i < inval_Arr.length; i++){
				
				if(inval_Arr[i] == false){
					validAll = false;
				}
			}
			
			if(validAll){ // 유효성 모두 통과
				alert('가입을 축하합니다');
				$('#register').submit()
				
			} else{
				alert('입력한 정보들을 다시 한번 확인해주세요 :')
				
			}

		}); 

	}); 
 	

		
	</script>

</body>
</html>






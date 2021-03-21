<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file = "/header.jsp" %>

<head>
  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="resources/dashboard/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/tooplate.css" type = 'text/css'>
<style type="text/css">
.bg03{
background-image: none;
background-color: white;
}

.tm-block .col-12{
border-color: #FACD89;
}
.tm-block-title{
background-color:#FACD89;
text-align: center; 
}

</style>

</head>
<body class="bg03">
    <div class="container">

        <!-- row -->
        <div class="row tm-content-row tm-mt-big">
            <div class="tm-col tm-col-big">
      
            </div>
            <div class="tm-col tm-col-big">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12" style="background-color:#FACD89; ">
                            <h1 class="tm-block-title">회원가입</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <form action="/mn/registJoin.do" id='frm' method="post" accept-charset="utf-8" class="tm-signup-form">
                                <div class="form-group">
                                    <label for="name">이름</label>
                                    <input placeholder="Vulputate Eleifend Nulla" id="mem_name" name="mem_name" type="text" class="form-control validate">
                                    <div id = "mem_name_check"></div>
                                </div>
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <input placeholder="영문 소문자, 특수문자,숫자를 4이상 모두 포함" id="mem_pass" name="mem_pass" type="password" class="form-control validate">
                                	
                                	
                                </div>
                                <div class="form-group">
                                    <label for="password2">비밀번호확인</label>
                                    <input placeholder="비밀번호를 다시 입력하세요." id="mem_pass_ck" type="password" class="form-control validate">
                                	 <div id = "mem_pass_check"></div>
                                	
                                <div class="form-group">
                                
                                    <label for="mem_email">e-mail</label>
                                    <input placeholder="이메일을 입력하세요." id="mem_email" name="mem_email" type="email" class="form-control validate">
                                	<div id = "mem_email_check"></div>
                                </div>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input placeholder="'-'는 제외" id="mem_tel" name="mem_tel" type="tel" class="form-control validate">
                                	<div id = "mem_tel_check"></div>
                                </div>
<!-- 								<div class="form-group">
																	
								</div>
 -->								<div class="row">
                                    <div class="col-12 col-sm-4">
                                        <button name="wlc_Cancle_btn"type="submit" class="btn btn-primary">취소
                                        </button>
                                    </div>
                                    <div class="col-12 col-sm-8 tm-btn-right">
                                        <button id="last_btn" name= "btn btn-danger" type="button" class="btn btn-danger">가입하기
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
            <div class="tm-col tm-col-small">
            
            </div>
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

    <script src="resources/dashboard/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="resources/bueno/js/bootstrap/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->

	<script type="text/javascript">
	// 이메일 검사 정규식
	//아이디 중복 검사
// 	$('#mem_name').on('click', function() {
// 		console.log("asdasd")
		
// 	});
	

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
	 	$('.btn-danger').click(function(){
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
				$('#frm').submit()
				
			} else{
				alert('입력한 정보들을 다시 한번 확인해주세요 :')
				
			}

		}); 

	}); 
 	

 	
</script>
    
</body>

</html>
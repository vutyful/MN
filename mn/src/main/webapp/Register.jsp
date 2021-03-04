<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="resources/dashboard/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/tooplate.css" type = 'text/css'>

</head>

<body class="bg03">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-xl navbar-light bg-light">
                    <a class="navbar-brand" href="index.jsp">
                        <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                        <h1 class="tm-site-title mb-0">멍냥이네</h1>
                    </a>
                    <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Dashboard
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="index.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    Reports
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Daily Report</a>
                                    <a class="dropdown-item" href="#">Weekly Report</a>
                                    <a class="dropdown-item" href="index.html">Yearly Report</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="products.html">Products</a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="#">Accounts</a>
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
                                    <i class="far fa-user mr-2 tm-log-icon"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row tm-mt-big">
            <div class="tm-col tm-col-big">
      
            </div>
            <div class="tm-col tm-col-big">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-block-title">가입해가입해가입해</h2>
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
                                    <input placeholder="영문 소문자, 숫자를 모두 포함" id="mem_pass" name="mem_pass" type="password" class="form-control validate">
                                	 <div id = "mem_pass_check"></div>
                                	
                                	
                                </div>
                                <div class="form-group">
                                    <label for="password2">비밀번호확인</label>
                                    <input placeholder="비밀번호를 다시 입력하세요." id="mem_pass_check" type="password" class="form-control validate">
                                	
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input placeholder="010-000-0000" id="mem_tel" name="mem_tel" type="tel" class="form-control validate">
                                	<div id = "mem_tel_check"></div>
                                </div>
                                <div class="form-group">
                                
                                    <label for="mem_id">e-mail</label>
                                    <input placeholder="이메일을 입력하세요." id="mem_id" name="mem_id" type="email" class="form-control validate">
                                	<div id = "mem_id_check"></div>
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
 		var pwJ = /^([A-Z][a-z][0-9]){4,12}$/; //비번 정규식 다시 확인
 		
		
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
 		
/*  		//이메일 정규식 확인
 		$("#mem_email").blur(function() {  //blur() 포커스빠져나갔을때 나타나는 메서드
			if (mailJ.test($(this).val())) {	//test() 메서드는 주어진 문자열이 정규 표현식을 만족하는지 판별하고, 그 여부를 true 또는 false로 반환합니다.
					console.log(mailJ.test($(this).val()));
					$("#mem_email_check").text('');
			} else {
				$('#mem_email_check').text('이메일을 확인해주세요');
				$('#mem_email_check').css('color', 'red');
			}
		}); */
 		
 		
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
			// 이메일 정규식
			if (mailJ.test($('#mem_id').val())){
				console.log(mailJ.test($('#mem_id').val()));
				inval_Arr[1] = true;
			} else {
				inval_Arr[1] = false;
			}	
			
 	 		//비밀번호 입력시 비교 확인 
			if (pwJ.test($('#mem_pass').val()==$('#mem_pass_check').val())){
				alert("비밀번호가 일치함")
				inval_Arr[2] = true;
			} else {
				alert("비번확인 안함? 정신 안차림?")
				$('#mem_pass').val("");
 	 			$('#mem_pass_check').val("");
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
				alert('가입성공!');
				$('#frm').submit()
				
			} else{
				alert('입력한 정보들을 다시 한번 확인해주세요 :')
				
			}

		}); 

	}); 
 	

 	
</script>
    
</body>

</html>
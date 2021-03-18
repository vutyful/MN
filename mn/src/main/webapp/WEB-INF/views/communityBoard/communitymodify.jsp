<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>

<!-- summernote-dist -->
<link rel="stylesheet"
	href="../resources/summernote-dist/summernote-lite.css">

<!-- summernote-dist -->
<link href="../resources/summernote-dist/summernote.css" rel="stylesheet"
	type="text/css" />
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">

</head>

<body>

	<section class="post-news">
		<div class="container">
			<div class="row justify-content-center">
				<!--con-content 게시판 내용 입력 -->
				<div class="col-12 col-lg-8 col-xl-9">
					<div class="mb-100">
						<div class="blog-thumbnail mb-50">
							<!-- <img src="../resources/bueno/img/bg-img/cat_shower.png" alt=""> -->
						</div>
						<!-- summernote -->
						<form action="commuUpate.do"method="post">
							<h4 class="mb-50">게시판 수정하기</h4>

							
							제목: <input type="text" name="bo_title" style="width: 40%;" value="${modifyResult.bo_title}"/>
							 	<input type="hidden" name="bo_num" id="bo_num" value="${modifyResult.bo_num}">
							<!-- summernote  -->
							<textarea id="summernote" name="bo_content" value="${modifyResult.bo_content}"></textarea>
							<input type="hidden" name="mem_num" value="${sessionScope.userInfo.mem_num }">

							<div class="col-12"><!--  /mn/communityBoard/CommunityInsert.do -->
								<input id="modify_btn" class="btn bueno-btn mt-30"
									type="submit" value="수정완료">
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
<script src="../resources/bueno/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="/mn/../resources/bueno/js/bootstrap/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="../resources/bueno/js/bootstrap/bootstrap.min.js"></script>
<!-- All Plugins js -->
<script src="../resources/bueno/js/plugins/plugins.js"></script>
<!-- Active js -->
<script src="../resources/bueno/js/active.js"></script>
<!--summernote js  -->
<script src="../resources/summernote-dist/summernote-lite.js"></script>
<script src="../resources/summernote-dist/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">

$(function() {
	
	//등록버튼을 눌렀을 시
	$('#modify_btn').click(function () {
		
		if($('#summernote').val().isEmpty()){
    		alert('내용을 입력하세요.');
    	}
		
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

})//function of end
</script>
</body>
</html>
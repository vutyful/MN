<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>
    <!-- summer note -->
    <link rel="stylesheet" type="text/css" href="../resources/summernote/summernote.css">
    
    <!-- summer note -->
    <div style="padding:30px;">
    	<h2 style="color:black; text-align: center;">정보글 수정</h2>
    </div>
    <div class="row justify-content-center">
    <div class="col-12 col-lg-8 col-xl-9">
    <div class="mb-100"> 
    <input type="hidden" id="imsi_cate" value="${content.con_cate}"/>
    
   	<form id="frm" action="updateContent.do" method="post">
   		<input type="hidden" id="con_cate" name="con_cate"/>
   		<input type="hidden" name="con_num" value="${content.con_num}"/>
        <div style="margin-bottom: 20px;">
	    	<input id="con_title" 
	    			name="con_title" 
	    			type="text" 
	    			value="${content.con_title}" 
	    			style="width:70%; height: 40px; margin-left: 20px;">
    		<select id="category" style="width:100px;">
	    		<option value="강아지 음식">강아지 음식</option>
	            <option value="강아지 행동">강아지 행동</option>
	            <option value="강아지 건강">강아지 건강</option>
	            <option value="견종백과">견종백과</option>
	            <option value="고양이 음식">고양이 음식</option>
	            <option value="고양이 행동">고양이 행동</option>
	            <option value="고양이 건강">고양이 건강</option>
	            <option value="묘종백과">묘종백과</option>
	        </select>
	     </div>

		<textarea id="summernote" 
					class="summernote" 
					style="margin:40px;"
					value="${content.con_content}"></textarea>
        <input type="hidden" id="con_content" name="con_content"/>
        <div style="text-align: center; margin-top: 20px;">
       		<button class="btn bueno-btn" id="info_write" style="border-radius: 15px; font-size: 30px;">등록하기</button>
        </div>
	</form>
 	</div>
    </div>
    </div> 
    
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <p class="copywrite-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
    <script src="../resources/bueno/js/active.js"></script>
    
    <!-- summer note -->
    <script src="../resources/summernote/summernote.js"></script>
    <script src="../resources/summernote/summernote2.js"></script>
    <script src="../resources/summernote/lang/summernote-ko-KR.js"></script>
    
    <!-- db 연동에 필요한 js -->
    <script src="../resources/content/content.js"></script>
    <script>
    $('#info_write').click(function(){
    	if($('#summernote').val().isEmpty()){
    		alert('내용을 입력하세요.');
    	}
    }
    </script>
</body>

</html>

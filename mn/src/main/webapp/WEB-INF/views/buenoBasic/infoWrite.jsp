<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>

    <!-- summer note -->
    <div style="padding:30px;">
    	<h2 style="color:black; text-align: center;">정보글 쓰기</h2>
    </div>
    <div class="row justify-content-center">
    <div class="col-12 col-lg-8 col-xl-9">
    <div class="mb-100"> 
   	<form id="frm" action="writeContent.do" method="post">
        <input type="hidden" id="con_cate" name="con_cate"/>
    	<input name="con_title" type="text" placeholder="제목" style="width:100%; height: 40px;">
    	
		<textarea id="summernote" class="summernote" style="margin:40px;"></textarea>
        <input type="hidden" id="con_content" name="con_content"/>
        <div style="text-align: center;">
       		<button class="btn bueno-btn">등록하기</button>
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
    
</body>

</html>
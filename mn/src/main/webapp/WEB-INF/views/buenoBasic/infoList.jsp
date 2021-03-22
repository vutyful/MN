<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file = "/header.jsp" %>

    <!-- 정보글 시작 -->
	        	
    <div class="catagory-post-area">
        <div class="container">
    		<div style="padding:80px;">
    			<h2 style="color:#DEA361; text-align: center;"> ${cate} </h2> 
    		</div>
            <div class="row justify-content-center">
                <!-- Post Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <!-- Single Blog Post -->
                    <c:forEach items="${ConList}" var="eachCon">
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail box">
                            <a href="infoDetail.do?con_num=${eachCon.con_num}"><img src="${eachCon.con_img}" class="profile"></a>
                        </div>
                        <!-- Blog Content -->
                        <div class="blog-content" style="padding-top:80px;">
                            <a href="infoDetail.do?con_num=${eachCon.con_num}" class="post-title">${eachCon.con_title}</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">${fn:substring(eachCon.con_date,0,16)}</a>
                                <a href="#" class="post-date">조회수 ${eachCon.viewcount}</a>
                            </div>
                            ${eachCon.con_head}
                        </div>
                    </div>
                    </c:forEach>
                </div>

                <!-- Sidebar Area -->
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="pagination-area" style="margin: 40px 0px; padding-left:25%;">
						<!-- 페이징 처리 -->
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                            <a class="page-link" href="infoList.do?con_cate=${cate}&pageNo=1" style="color:#DEA361;">처음</a>
                            <a class="page-link" href="infoList.do?con_cate=${cate}&pageNo=${now-1}" style="color:#DEA361;">이전</a>
                            <c:forEach var="i" begin="${start}" end="${end}">
                                <li class="page-item">
                                	<a class="page-link button" style="margin-left:5px;" href="infoList.do?con_cate=${cate}&pageNo=${i}">${i}</a>
                                </li>
                            </c:forEach>
                            <a class="page-link" href="infoList.do?con_cate=${cate}&pageNo=${now+1}" style="color:#DEA361;">다음</a>
                            <a class="page-link" href="infoList.do?con_cate=${cate}&pageNo=${total}" style="color:#DEA361;">끝</a>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Post Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <!-- <p class="copywrite-text"><a href="#">Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p> -->
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
    <script>
    	$('.page-item').click(function(){
    		alert('색깔 안바뀌니?')
    		$(this).css('background-color','#DEA361');
    		$(this).css('color','white');
    	})
    </script>
</body>

</html>
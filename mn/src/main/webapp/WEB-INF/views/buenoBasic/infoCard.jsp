<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>


    <!-- ##### Catagory Area Start ##### -->
    <div class="post-catagory section-padding-100">
        <div class="container">
            <div style="padding-bottom: 40px;">
        		<h2 style="color:black; text-align: center;">${cate}</h2>
        	</div>
            <div class="row">
                <!-- Single Post Catagory -->
                <c:forEach items="${ConList}" var="eachCon">
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-post-catagory mb-30 box">
                        <img src="${eachCon.con_img}"  class="profile" alt="">
                        <!-- Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                                <a href="infoDetail.do?con_num=${eachCon.con_num}" class="post-title">${eachCon.con_title}</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="pagination-area mt-70">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                            <c:forEach var="i" begin="1" end="${pages}">
                                <li class="page-item">
                                	<a class="page-link" href="infoCard.do?con_cate=${cate}&pageNo=${i}"> ${i}</a>
                                </li>
                            </c:forEach>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Area End ##### -->

    <!-- ##### Instagram Area Start ##### -->
    <!-- <div class="instagram-feed-area d-flex flex-wrap">
        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta1.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta1.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta2.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta2.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta3.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta3.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta4.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta4.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta5.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta5.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta6.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta6.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta7.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta7.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta8.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta8.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta9.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta9.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>

        Single Instagram
        <div class="single-instagram">
            <img src="img/bg-img/insta10.jpg" alt="">
            Image Zoom
            <a href="img/bg-img/insta10.jpg" class="img-zoom" title="Instagram Image">+</a>
        </div>
    </div> -->
    <!-- ##### Instagram Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-5">
                    <!-- Copywrite Text -->
                    <!-- <p class="copywrite-text">Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
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
</body>

</html>
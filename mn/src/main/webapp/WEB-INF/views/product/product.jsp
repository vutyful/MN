<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>


<style type="text/css">
.result{
	margin: 50px 29%;
	width: 800px;
	height: 700px;
	text-align: center;
	
}

.graph{
	display:inline-block;
	width: 800px;
	height: 700px;
}

.reply-btn {
  background-color: #DEA361;
  -webkit-transition-duration: 200ms;
  transition-duration: 200ms;
  position: relative;
  z-index: 1;
  display: inline-block;
  min-width: 40px;
  height: 30px;
  color: #ffffff;
  border-radius: 0;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 500;
  text-transform: capitalize;
  border-radius: 8px; }
  .reply-btn:hover{
    font-size: 15px;
    font-weight: 500;
    background-color: #46382C;
    color: #ffffff; }
	
</style>
</head>

<body>

	<div style="padding-top:50px; padding-left: 47%; margin-bottom: 90px;">
    			<h2 style="color:#DEA361; text-align: center; display: inline-block;"> 상품 추천 </h2>
    </div>
    			<div style="padding-left: 36%;">
    				<label style="font-size: 20px; margin-right: 15px; margin-bottom: 20px;" >강아지</label>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=1&cate=고양이사료&age=키튼'">키튼</button>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=2&cate=고양이사료&age=어덜트'">어덜트</button>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=3&cate=고양이사료&age=시니어'">시니어</button>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=4&cate=고양이사료&age=전연령용'">전연령용</button>
    			</div>
    			<div style="padding-left: 36%;">
    				<label style="font-size: 20px; margin-right: 15px;">고양이</label>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=5&cate=강아지사료&age=퍼피'">퍼피</button>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=6&cate=강아지사료&age=어덜트'">어덜트</button>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=7&cate=강아지사료&age=시니어'">시니어</button>
    				<button class="btn reply-btn" style="" onclick="location.href='product.do?result=8&cate=강아지사료&age=전연령용'">전연령용</button>
    			</div>
    			
    <div class="result">
    	<img class="graph" src="/mn/resources/data/pandas/${graph}.png">
    </div>
    
    <div style=" position:relative; left: 40%; margin-bottom:20px;">
    <div class=".section-padding-70-20" style="text-align: center; width: 20%; background-color:#FAEFE2; border:#FAEFE2 solid 3px; border-radius:10px;"><h2 style=" margin-top:8px; 
    text-align: center; ">상품 정보</h2></div>
    </div>
    
<!-- 	<div class="box">
		<img class="profile" src="https://i.pinimg.com/236x/c7/2f/4c/c72f4c15aadaa3e70d046316414ba9eb.jpg">
	</div> --> 
	    <div class="post-catagory mb-70">
        <div class="container">
            <div class="row justify-content-center">
            
                <c:forEach items="${products}" var="product">
                <!-- 상품 개별 정보 -->
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="${product.pro_link}}">
                        	<img src="${product.pro_img}" class = "profile">
                        </a>
                        
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">${product.pro_name}</h4>
                    	<h7 style="padding-left:10px;">${product.price}원(100g 당)</h6>
                	</div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>

</body>

<script type="text/javascript">

</script>

</html>
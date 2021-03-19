<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>


<style type="text/css">
.result{
	margin: 50px 30%;
	width: 800px;
	height: 700px;
	text-align: center;
	
}

.graph{
	display:inline-block;
	width: 800px;
	height: 700px;
}
	
</style>
</head>

<body>

	<div style="padding-top:50px; padding-left: 47%;">
    			<h2 style="color:#DEA361; text-align: center; display: inline-block;"> 상품 추천 </h2> 
    			<select id="cate" style="display: inline-block; margin-left: 130px; width: 100px; height: 30px;">
    				<option>고양이</option>
    				<option>강아지</option>
    			</select>
    			<select id="age" style="display: inline-block; margin-left: 10px; width: 100px; height: 30px;">
    				<option>키튼</option>
    				<option>어덜트</option>
    				<option>시니어</option>
    				<option>모든 연령용</option>
    			</select>
    </div>
    <div class="result">
    	<img class="graph" src="https://i.pinimg.com/236x/c7/2f/4c/c72f4c15aadaa3e70d046316414ba9eb.jpg">
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
                <!-- 상품 개별 정보 -->
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="http://www.11st.co.kr/products/2439785936?utm_medium=%EA%B2%80%EC%83%89&gclid=CjwKCAjw9MuCBhBUEiwAbDZ-7uLUQEg2YsP3WH1r0wkqEbbdD7z_GxJQYHFzZoh8TyeDSZYLTfbMQhoCE9UQAvD_BwE&utm_source=%EA%B5%AC%EA%B8%80_PC_S_%EC%87%BC%ED%95%91&utm_campaign=%EA%B5%AC%EA%B8%80%EC%87%BC%ED%95%91PC+%EC%B6%94%EA%B0%80%EC%9E%91%EC%97%85&utm_term=">
                        	<img src="http://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/8/5/9/3/6/ygcTq/2439785936_B.jpg" class = "profile">
                        </a>
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">베이비캣 10kg 대용량 새끼고양이사료/로얄캐닌</h4>
                    	<h7 style="padding-left:10px;">12,000원</h6>
                	</div>
                </div>
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="http://www.11st.co.kr/products/2439785936?utm_medium=%EA%B2%80%EC%83%89&gclid=CjwKCAjw9MuCBhBUEiwAbDZ-7uLUQEg2YsP3WH1r0wkqEbbdD7z_GxJQYHFzZoh8TyeDSZYLTfbMQhoCE9UQAvD_BwE&utm_source=%EA%B5%AC%EA%B8%80_PC_S_%EC%87%BC%ED%95%91&utm_campaign=%EA%B5%AC%EA%B8%80%EC%87%BC%ED%95%91PC+%EC%B6%94%EA%B0%80%EC%9E%91%EC%97%85&utm_term=">
                        	<img src="http://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/8/5/9/3/6/ygcTq/2439785936_B.jpg" class = "profile">
                        </a>
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">베이비캣 10kg 대용량 새끼고양이사료/로얄캐닌</h4>
                    	<h7 style="padding-left:10px;">12,000원</h6>
                	</div>
                </div>
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="http://www.11st.co.kr/products/2439785936?utm_medium=%EA%B2%80%EC%83%89&gclid=CjwKCAjw9MuCBhBUEiwAbDZ-7uLUQEg2YsP3WH1r0wkqEbbdD7z_GxJQYHFzZoh8TyeDSZYLTfbMQhoCE9UQAvD_BwE&utm_source=%EA%B5%AC%EA%B8%80_PC_S_%EC%87%BC%ED%95%91&utm_campaign=%EA%B5%AC%EA%B8%80%EC%87%BC%ED%95%91PC+%EC%B6%94%EA%B0%80%EC%9E%91%EC%97%85&utm_term=">
                        	<img src="http://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/8/5/9/3/6/ygcTq/2439785936_B.jpg" class = "profile">
                        </a>
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">베이비캣 10kg 대용량 새끼고양이사료/로얄캐닌</h4>
                    	<h7 style="padding-left:10px;">12,000원</h6>
                	</div>
                </div>
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="http://www.11st.co.kr/products/2439785936?utm_medium=%EA%B2%80%EC%83%89&gclid=CjwKCAjw9MuCBhBUEiwAbDZ-7uLUQEg2YsP3WH1r0wkqEbbdD7z_GxJQYHFzZoh8TyeDSZYLTfbMQhoCE9UQAvD_BwE&utm_source=%EA%B5%AC%EA%B8%80_PC_S_%EC%87%BC%ED%95%91&utm_campaign=%EA%B5%AC%EA%B8%80%EC%87%BC%ED%95%91PC+%EC%B6%94%EA%B0%80%EC%9E%91%EC%97%85&utm_term=">
                        	<img src="http://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/8/5/9/3/6/ygcTq/2439785936_B.jpg" class = "profile">
                        </a>
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">베이비캣 10kg 대용량 새끼고양이사료/로얄캐닌</h4>
                    	<h7 style="padding-left:10px;">12,000원</h6>
                	</div>
                </div>
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="http://www.11st.co.kr/products/2439785936?utm_medium=%EA%B2%80%EC%83%89&gclid=CjwKCAjw9MuCBhBUEiwAbDZ-7uLUQEg2YsP3WH1r0wkqEbbdD7z_GxJQYHFzZoh8TyeDSZYLTfbMQhoCE9UQAvD_BwE&utm_source=%EA%B5%AC%EA%B8%80_PC_S_%EC%87%BC%ED%95%91&utm_campaign=%EA%B5%AC%EA%B8%80%EC%87%BC%ED%95%91PC+%EC%B6%94%EA%B0%80%EC%9E%91%EC%97%85&utm_term=">
                        	<img src="http://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/8/5/9/3/6/ygcTq/2439785936_B.jpg" class = "profile">
                        </a>
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">베이비캣 10kg 대용량 새끼고양이사료/로얄캐닌</h4>
                    	<h7 style="padding-left:10px;">12,000원</h6>
                	</div>
                </div>
                <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px; ">
                    <div class="single-post-catagory mb-30 box" style="border:0px #DEA361 solid;">
                        <a href="http://www.11st.co.kr/products/2439785936?utm_medium=%EA%B2%80%EC%83%89&gclid=CjwKCAjw9MuCBhBUEiwAbDZ-7uLUQEg2YsP3WH1r0wkqEbbdD7z_GxJQYHFzZoh8TyeDSZYLTfbMQhoCE9UQAvD_BwE&utm_source=%EA%B5%AC%EA%B8%80_PC_S_%EC%87%BC%ED%95%91&utm_campaign=%EA%B5%AC%EA%B8%80%EC%87%BC%ED%95%91PC+%EC%B6%94%EA%B0%80%EC%9E%91%EC%97%85&utm_term=">
                        	<img src="http://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/8/5/9/3/6/ygcTq/2439785936_B.jpg" class = "profile">
                        </a>
                       <!--  Content -->
                    </div>
                    <div style="text-align: center;">
                    	<h6 style="padding-left:10px; margin-top: -20px;">베이비캣 10kg 대용량 새끼고양이사료/로얄캐닌</h4>
                    	<h7 style="padding-left:10px;">12,000원</h6>
                	</div>
                </div>
            </div>
        </div>
    </div>

</body>

<script type="text/javascript">

</script>

</html>
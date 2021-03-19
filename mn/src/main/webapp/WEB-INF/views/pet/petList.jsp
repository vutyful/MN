<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>


<style type="text/css">
	table{
		border: none;
		padding-bottom:20px;
		text-align: center;
	}
	
	#table{
		padding-left: 650px;
		position: relative;
		padding-top: 50px;
		margin-bottom: 30%;
	}
	td{
		color:#46382C;
		font-size: 18px;
		padding:10px 40px;
	}
	
	button{
		margin-top: 20px;
	}
	
	/* 반려동물 프로필 css*/
.pet_box{
	 width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
	border: solid #FAEFE2 2px;
}
.pet_profile{
	width: 100%;
	height: 100%;
	object-fit:cover;
}
		
</style>
</head>

<body>

	<div style="padding-top:80px;">
    			<h2 style="color:#DEA361; text-align: center;"> 반려동물 프로필 </h2> 
    </div>
	<div id="table">
	<div class="pet_box" style="margin-left:230px; margin-bottom: 30px;"> <!-- pet_num이 세션값에 있으면 두번째 img, 없으면 기본이미지 띄우기 -->
		<%-- <img class="pet_profile" src="/mn/resources/petimg/${petList.pet_img}"> --%>
		<img class="pet_profile" src="/mn/resources/petimg/basic_pet.png">
	</div>
		<form id="frm" action="/mn/pet/petModify.do" name='form' enctype="multipart/form-data" method="post">
			<table border="3">
	
				<tr>
					<td>반려동물 이름</td>
					<td><input type="text" name="pet_name" value="${petList.pet_name}"></td>
				</tr>
	
	<!--  img src로 db img 이름의 경로로 사진 띄워줌. 이미 잇는 파일 집어넣어도 에러 안뜸.-->
				<tr>
					<td>반려동물 사진</td>
					<td><input type="file" name="file"></td>
					<%-- <td><img src="/mn/resources/petimg/${petList.pet_img}"   
						style="width: 200px; height: 100px;" /></td> --%>
				</tr>
	
	<!-- 날짜 스트링 형태.-->
				<tr>
					<td>반려동물 생일</td>
					<td><input type="date" name="pet_birth" value="${petList.pet_birth}"></td>
				</tr>
				 <tr>
					<td>반려동물 종류</td> <!-- input 대신 select로 처리 -->
					<td><input type="hidden" name="pet_dogcat"
						value="${petList.pet_dogcat}">
						<select id="pet_dogcat" style="width: 200px;">
							<option value="강아지">강아지</option>
							<option value="고양이">고양이</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>반려동물 품종</td>
					<td><input type="text" name="pet_kind" value="${petList.pet_kind}"></td>
				</tr>
				<tr> 
				<input type="hidden" id="pet_num" name="pet_num" value="${petList.pet_num}">
				 </tr>
	
			</table>
			<button id="regist" class="btn bueno-btn" style="margin-left: 80px;">등록하기</button>
			<button id="modify" class="btn bueno-btn">수정하기</button>
			<button id="delete" class="btn bueno-btn">삭제하기</button>
		</form>
	</div>

</body>

<script type="text/javascript">

	$('#modify').click(function () {
		if(confirm("수정하시겠습니다?")==true){
			$('#frm').submit();
		}else{
			return false;
		}
	})
	
	$('#delete').click(function(){ //삭제하기 클릭 시 pet_num 가지고가기
		location.href='/mn/pet/petDelete.do?pet_num='+$('#pet_num').val();
	})

</script>

</html>
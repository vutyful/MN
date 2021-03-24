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
	
	<c:forEach items="${petList}" var="data">
		<%-- <div class="pet_box" style="margin-left:230px; margin-bottom: 30px;"> <!-- pet_num이 세션값에 있으면 두번째 img, 없으면 기본이미지 띄우기 -->
			<img class="pet_profile" src="/mn/resources/petimg/${petList.pet_img}">
			<img class="pet_profile" src="${data.pet_img }">
		</div> --%>
			<a class = "data_pet_name" style="cursor:pointer" value = "${data.pet_name}">${data.pet_name }</a>
			<input type="hidden" class="data_pet_name" value = "${data.pet_name }">
			<input type="hidden" class="data_pet_num" value = "${data.pet_num }">
			<input type="hidden" class="data_pet_birth" value = "${data.pet_birth }">
			<input type="hidden" class="data_pet_dogcat" value = "${data.pet_dogcat }">
			<input type="hidden" class="data_pet_kind" value = "${data.pet_kind }">
			<div class="pet_box">
			<img class="pet_profile" style="cursor:pointer" src="/mn/resources/petimg/${data.pet_img}">
			</div>
	</c:forEach>
	
	
		<form id="frm" action="/mn/pet/petModify.do" name='form' enctype="multipart/form-data" method="post">
			<table border="3">
	
				<tr>
					<td>반려동물 이름</td>
					<td><input type="text" id="pet_name" name="pet_name" ></td>
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
					<td><input type="date" id ="pet_birth" name="pet_birth"></td>
				<!-- 	<td><input type="text" id ="pet_birth" name="pet_birth"></td> -->
				</tr>
				 <tr>
					<td>반려동물 종류</td> <!-- input 대신 select로 처리 -->
					<td><!-- <input type="hidden" name="pet_dogcat"> -->
						<select id="pet_dogcat" style="width: 200px;" name="pet_dogcat" > 
							<option value="강아지">강아지</option>
							<option value="고양이">고양이</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>반려동물 품종</td>
					<td><input type="text" id = "pet_kind" name="pet_kind" ></td>
				</tr>
				<tr> 
				<input type="hidden" id="pet_num" name="pet_num" value="">
				 </tr>
	
			</table>
		</form>
			<!-- <a  href="/mn/pet/petRegist.do" id="regist" class="btn bueno-btn" style="margin-left: 80px;"  onclick="$('#frm').submit()">등록하기</a> -->
			<a  id="regist" class="btn bueno-btn" style="margin-left: 80px; margin-top: 40px;" >등록하기</a>
			<a  id="modify" class="btn bueno-btn" style="margin-top: 40px;">수정하기</a>
			<a  id="delete" class="btn bueno-btn" style="margin-top: 40px;">삭제하기</a>
	</div>

</body>

<script type="text/javascript">

	var pet_name = $('#pet_name').val();

	var pet_birth = $('#pet_birth').val();
	var pet_dogcat = $('#pet_dogcat').val();
	var pet_kind = $('#pet_kind').val()
	var pet_num = '';

	$('#modify').click(function () {
		if(confirm("수정하시겠습니까?")==true){
			$('#pet_name').val()
			$('#frm').submit();
		}else{
			return false;
		}
	})
	
	$('#delete').click(function(){ //삭제하기 클릭 시 pet_num 가지고가기
		location.href='/mn/pet/petDelete.do?pet_num=' + $('#pet_num').val();
	})
	
	$('#regist').click(function(){ //등록하기 클릭 시 mem_num 가지고가기
		var pet_name = $('#pet_name').val();
		var pet_birth = $('#pet_birth').val();
		var pet_dogcat = $('#pet_dogcat').val();
		var pet_kind = $('#pet_kind').val()
		if(confirm("등록하시겠습니다?")==true){
			if(pet_name == ''){
				alert("이름을 입력해주세요");
				return false;
			}
			$('#pet_num').val('0');
			$('#frm').submit();
				
			//location.href='/mn/pet/petModify.do';
			//location.href='/mn/pet/petRegist.do?pet_name=' + pet_name + '&pet_birth=' + pet_birth + '&pet_dogcat=' +  pet_dogcat + '&pet_kind=' + pet_kind;
		}else{
			return false;
		}
	})
	
/* 	$('.data_pet_name').hover(function(){
		$(this).css('cursor'.'pointer');
	})
	 */
	$('.data_pet_name').click(function(){
		var pet_name = $(this).next().val()
		var pet_num = $(this).next().next().val();
		var pet_birth = $(this).next().next().next().val();
		var pet_dogcat = $(this).next().next().next().next().val();
		var pet_kind = $(this).next().next().next().next().next().val();
		
		
		
		$('#pet_num').val(pet_num);
		$('#pet_name').val(pet_name);
		$('#pet_birth').val(pet_birth);
		$('#pet_dogcat').val(pet_dogcat).attr("selected", "true");
		$('#pet_kind').val(pet_kind);
		
	})
	$('.pet_box').click(function(){
		
		var pet_kind = $(this).prev().val();
		var pet_dogcat = $(this).prev().prev().val();
		var pet_birth = $(this).prev().prev().prev().val();
		var pet_num = $(this).prev().prev().prev().prev().val();
		var pet_name = $(this).prev().prev().prev().prev().prev().val();
		
		
		
		$('#pet_num').val(pet_num);
		$('#pet_name').val(pet_name);
		$('#pet_birth').val(pet_birth);
		$('#pet_dogcat').val(pet_dogcat).attr("selected", "true");
		$('#pet_kind').val(pet_kind);
		
	})

</script>

</html>
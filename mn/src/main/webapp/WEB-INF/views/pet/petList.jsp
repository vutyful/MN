<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/mn/pet/petModify.do" name='form'
		enctype="multipart/form-data" method="post">
		<table border="3">
			<%-- 		<tr>
			<td>반려동물 체크</td>
			<td><input type="text" name="pet_check">${petList.pet_check}</td>
		</tr> --%>


			<tr>
				<td>반려동물 이름</td>
				<td><input type="text" name="pet_name"
					value="${petList.pet_name}"></td>
			</tr>

<!--  img src로 db img 이름의 경로로 사진 띄워줌. 이미 잇는 파일 집어넣어도 에러 안뜸.-->
			<tr>
				<td>반려동물 사진</td>
				<td><input type="file" name="file">수정전 파일명 :
					${petList.pet_img}</td>
				<td><img src="/mn/resources/petimg/${petList.pet_img}"   
					style="width: 200px; height: 100px;" /></td>
			</tr>

<!-- 날짜 스트링 형태.-->
			<tr>
				<td>반려동물 생일</td>
				<td><input type="date" name="pet_birth"
					value="${petList.pet_birth}"></td>
			</tr>
			 		<tr>
				<td>반려동물 품종</td>
				<td><input type="text" name="pet_kind"
					value="${petList.pet_kind}"></td>
			</tr>
			<tr>
				<td>반려동물 강이지/고양이</td>
				<td><input type="text" name="pet_dogcat"
					value="${petList.pet_dogcat}"></td>
			</tr>
			<tr> 
			<input type="hidden" name="pet_num" value="${petList.pet_num}">
			<!-- </tr> -->

		</table>
		<input type="submit" value="반려동물 수정" onclick="return confirm('수정하시겠습니까?');"/>
		<a href="/mn/pet/petDelete.do?pet_num=${petList.pet_num}">삭제하기</a>
	</form>




</body>
</html>
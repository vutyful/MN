<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지도 생성하기</title>
    
</head>
<body>
<form action="modifyContent.do" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>제목</td>
			<td colspan="2"><input type="text" name="title" id="title" value="${content.title}"/></td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td>
				<select id="cate" name="cate">
					<c:forEach items="${list}" var="category">
						<option <c:if test="${category == content.cate}">selected</c:if> >${category}</option>
					</c:forEach>
					<option value="direct">직접입력</option>
				</select>
				<input type="text" id="direct" name="">
			</td>
		</tr>
		<tr>
			<td>이미지</td>
			<td colspan="2">
				<c:if test="${content.img ne null}">
					<img src="../resources/upload/${content.img}">
				</c:if>
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="2"><textarea name="ccontent" id="ccontent">${content.ccontent}</textarea></td>
		</tr>
		<tr>
			<td>파일</td>
			<td colspan="2"><input type="file" name="file"/></td>
		</tr>
		<tr>
			<td>숨기기</td>
			<td colspan="2"><input type="checkbox" name="cstate" value="hidden"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="수정"/></td>
			<td><a href="deleteContent.do?connum=${content.connum}" onclick="if(!confirm("삭제하시겠습니까?")){return false;}"><input type="button" value="삭제"/></a></td>
			<td><a href="getContentsList.do"><input type="button" value="목록"/></a></td>
		</tr>
	<input type="hidden" name="connum" value="${content.connum}"/>
	<input type="hidden" name="memnum" value="${content.memnum}"/>
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

<a href="/mn/manageContents/ContentsList.do"><h1>contents list 컨텐츠 관리</h1></a>
<a href="/mn/manageMembers/MembersList.do"><h1>members list 회원 관리</h1></a>
<input type="button" value="Button" id="analysis"/>

</body>

<script src="/mn/resources/bueno/js/jquery/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

$('#analysis').click(function(){
	alert("");
	$.ajax({
		url:"analysis.do",
		//dataType:"text",
		success: function(result){
			/* alert("Success")
			if(result=="true")
				alert("작업이 실행되었습니다. 조금 시간이 걸릴 수 있습니다.");
			else
				alert("작업이 실행 중 입니다. 잠시만 기다려주세요."); */
		},
		error:function(){}
	})
})

</script>

</html>






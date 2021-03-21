// 정보글 작성하기 (infoWrite.jsp)

$('#info_write').click(function(){

//카테고리 선택된 값을 hidden 태그 안에 넣기
$('#con_cate').val($('#category option:selected').val());

// summernote 작성내용을 html 형식으로 가져와 hidden 태그 안에 넣기
$('#con_content').val($('#summernote').val());

alert($('#con_content').val());

$('#frm').submit();


});

//로그인 전 댓글 등록버튼 대신 로그인 버튼 링크 걸기
$('#login').click(function(){
    location.href="/mn/login.jsp";
});

// 댓글 작성하기

$('#replyinsert').click(function(){

    $.ajax({
        type: 'post',
        url : 'replyinsert.do',
        data : {'con_num':$('#con_num').val(),'re_content':$('#re_content').val()},
        contentType : 'application/x-www-form-urlencoded;charset=utf-8',
        success: function(data){
            alert(data);
            //새로 쓴 댓글 리스트 밑에 추가하기
            var html = "";
            var recount = $('#recount').val()+1;

            html += '<li class="single_comment_area">';
            html += '<div class="comment-content d-flex">';
            html += '<div class="comment-meta">';
            html += '<div class="d-flex">';
            html += ' <a class="post-author">'+$('#mem_name').val()+'</a>';
            html += '<a class="post-date">방금 전</a>';
            html += '<a class="reply">답글 달기</a>';
            html += '</div>';
            html += '<p>'+ $('#re_content').val()+'</p>';
            html += '</div>';
            html += '</div>';
            html += '</li>';

            $('#recount').html(recount);
            $('#addComment_area').html(html);
            $('#nonereply').detach();
            $('#re_content').val("");
        },
        error:function (){
            alert('실패스')
        }
    });

});
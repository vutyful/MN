//로그인 전 댓글 등록버튼 대신 로그인 버튼 링크 걸기
$('#login').click(function(){
    location.href="/mn/login.jsp";
});

// 댓글 작성하기

$('#replyinsert').click(function(){
console.log($('#mem_num').val())
console.log($('#bo_num').val())
console.log($('#re_content').val().replace('\n','<br/>'))

    //댓글을 입력하지 않았다면
    if($('#re_content').val() == ""){
        alert('내용을 입력해 주세요.');
    }else{
		alert('등록?')
		console.log("이런 ")
        $.ajax({
            type: 'post',
            url : 'CommunityReply.do',
            data : {'mem_num':$('#mem_num').val(),'bo_num':$('#bo_num').val(),'re_content':$('#re_content').val().replace('\n','<br/>')},
            contentType : 'application/json',
            success: function(data){
                alert('댓글 등록이 완료되었습니다!');
                //새로 쓴 댓글 리스트 밑에 추가하기
                var html = "";
                var recount = Number($('#cCount').text())+1;
                html += '<li class="single_comment_area">';
                html += '<div class="comment-content d-flex">';
                html += '<div class="comment-meta">';
                html += '<div class="d-flex">';
                html += ' <a class="post-author" style="font-size:15px;">'+$('#mem_name').val()+'</a>';
                html += '<a class="post-date" style="font-size:15px;">방금 전</a>';
                html += '<button class="btn reply-btn modify">수정</button>';
                html += '<span><button class="btn reply-btn delete-btn" style="left:10px;">삭제</button></span>';
                html += '</div>';
                html += '<p>'+ $('#re_content').val().replace('\n','<br/>')+'</p>';
                html += '</div>';
                html += '</div>';
                html += '<textarea class="form-control modify-ta" style="width: 100%; height:100px; display: none;">'+$('#re_content').val().replace('<br/>','\n')+'</textarea>';
                html += '<button class="btn reply-btn modify-btn" style="display: none;" >등록</button>';
                html += '<input type="hidden" value="'+data+'"/> ';
                html += '</li>';

                $('#cCount').text(recount);
                $('#commentarea').prepend(html).trigger("create");
                $('#nonereply').detach();
                $('#re_content').val("");
            },
            error:function (e){
            alert(e)
                alert('실패스')
            }
        });
    }
});


// 각각의 댓글 수정 버튼 클릭 시
$(document).on('click','.modify',function (){
    // 수정버튼 태그의 클래스에 이미 on 클래스가 있다면 수정 textarea와 수정 등록 버튼 숨기기
    if($(this).hasClass('on')){
        //on 클래스 지우기
        $(this).removeClass('on');
        //p 태그 보이게 (원래 댓글)
        $(this).parent().next().css('display','inline-block');
        //수정 textarea 숨기기
        $(this).parents('.comment-content').next().css('display','none');
        // 수정 등록 버튼 숨기기
        $(this).parents('.comment-content').next().next().css('display','none');
    }else{
        $(this).addClass('on');
        //p 태그 숨기기 (원래 댓글)
        $(this).parent().next().css('display','none');
        //수정 textarea 활성화
        $(this).parents('.comment-content').next().css('display','inline-block');
        // 수정 등록 버튼 활성화
        $(this).parents('.comment-content').next().next().css('display','inline-block');
    }
});

// 각각의 수정 완료 버튼 클릭 시
$(document).on('click','.modify-btn',function (){
    $.ajax({
        type : 'post',
        async :  'true',
        url : 'replyupdate.do',
        contentType : 'application/x-www-form-urlencoded;charset=utf-8',
        data : {'re_content' : $(this).prev().val(),
            're_num' : $(this).next().val()
        },
        success : function (result){
            alert(result);
        },
        error : function (err) {console.log(err);}
    });
    //DB연동 후 수정 등록 form 없애기
    $(this).prev().prev().find('p').text($(this).prev().val());//수정한 내용 댓글에 반영
    $(this).prev().prev().find('p').css('display','inline-block');// 댓글 다시 띄우기
    $(this).prev().css('display','none'); //수정 textarea 숨기기
    $(this).css('display','none'); //수정 등록 버튼 숨기기

});

// 댓글 삭제
$(document).on('click','.delete-btn',function (){

    if(confirm('댓글을 삭제하시겠습니까?')){ //확인 누를 시
        var recount = Number($('#cCount').text())-1;
        $('#cCount').text(recount);

        $.ajax({
            type : 'post',
            async :  'true',
            url : 'replydelete.do',
            contentType : 'application/x-www-form-urlencoded;charset=utf-8',
            data : {'re_num' : $('#re_num').val()
            },
            dataType: 'text',
            success : function (data){
                alert(data); //삭제되었습니다 알림
            },
            error : function (err) {console.log(err);}
        });
        //해당 댓글 화면에서 삭제
        $(this).closest('li.single_comment_area').remove();
    }else{ //취소 누를 시
        // 아무것도 안하기
        return;
    }
});

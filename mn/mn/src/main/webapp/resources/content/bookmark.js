// 북마크 ajax

$('#bm_img').css('cursor','pointer');
$('#bm_img').click(function(){
    var bm;
    $.ajax({
        type: 'post',
        async : false,
        url : 'bm.do',
        contentType : 'application/x-www-form-urlencoded;charset=utf-8',
        data : {'con_num':$('#con_num').val()
        },//해당 정보글 번호 보내기
        success : function(result){
            bm = result;
        },
        error : function(err){console.log(err);}
    });
            if(bm ==='ok'){ // 북마크 컬럼값에 해당 정보글이 없을 때 북마크 아이콘 ok로 바꿔줌
                $('#bm_img').attr('src','/mn/resources/content/img/bm_ok.jpg');
            }else{
                $('#bm_img').attr('src','/mn/resources/content/img/bm_no.jpg');
            }
});



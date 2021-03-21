$(function (){
    $('#summernote').summernote({ // summernote 생성
        height: 800,
        minHeight: 600,
        maxHeight: null,
        codemirror: {
            theme: 'default'
        },
        callbacks: {
            onImageUpload: function(files, editor, welEditable){
                for (var i = files.length-1; i>=0; i--){
                    sendFile(files[i], editor, welEditable);
                }
            }
        }
    });
})

function sendFile(file,editor, welEditable){
    form_data = new FormData();
    form_data.append('file',file);
    $.ajax({
       data: form_data,
       type: "POST",
        url:'imageUpload.do',
        cache: false,
        contentType: false,
        processData : false,
        dataType:'text',
        timeout:10000, // second timeout
        success: function(data) {
            var image = $('<img>')
            var temp = data
            image.attr('src',temp);
        	$('#summernote').summernote("insertNode", image[0]);

        },
        error:function(data){
        	alert('error : ' + data);
        }


    });
}
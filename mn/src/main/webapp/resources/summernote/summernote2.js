$(function (){
    $('#summernote').summernote({
        height: 800,
        minHeight: 600,
        maxHeight: null,
        codemirror: {
            theme: 'default'
        },
        collbacks: {
            onImageUpload: function(files, editor, welEditable){
                for (var i = files.length-1; i>=0; i--){
                    sendFile(files[i], this);
                }
            }
        }
    });
})
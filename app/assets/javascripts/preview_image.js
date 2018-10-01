$(function(){
  $('#upload-user-img').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $('.js-img-uploader').attr("title", file.name);
        $('.js-img-uploader').attr("style", `background-image: url("${e.target.result}"`);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});

$(function() {
  $('#profile_background_image').change(function(e){

    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $('.bg-prof-01').attr("title", file.name);
        $('.bg-prof-01').attr("style", `background-image: url("${e.target.result}"`);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});

$(function() {
  $('#upload-user-bg-trigger').on('click', function() {
    $('#profile_background_image').trigger('click');
  })
})

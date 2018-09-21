$(function(){
  $('#work_title').keyup(function(){
    var markdown = $(this).val();
    var html = marked(markdown);
    $('.draw-title').html(html);
  });
  $('#work_content').keyup(function(){
    var markdown = $(this).val();
    var html = marked(markdown);
    $('.draw-text').html(html);
  });
});

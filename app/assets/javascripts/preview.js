// シゴト投稿画面の記事投稿部分　マークダウンで入力したテキストをHTMLに変換してプレビュー部分に表示させる。marked.js使用。
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

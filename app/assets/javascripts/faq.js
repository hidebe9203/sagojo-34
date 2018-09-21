// $(document).ready(function(){
//   $('a[href^="#"]').click(function() {
//     var href= $(this).attr("href");
//     var hash = href == "#" || href == "" ? 'html' : href;
//     scrollToAnker(hash);
//     return false;
//   });

//   function scrollToAnker(hash) {
//     var target = $(hash);
//     var position = target.offset().top;
//     $('body,html').animate({scrollTop:position}, 500);
//   }
// })

$(document).ready(function(){
  $('a[href^="#"]').click(function() {
    var href= $(this).attr("href");
    var hash = href == "#" || href == "" ? 'html' : href;
    scrollToAnker(hash);
    return false;
  });

  function scrollToAnker(hash) {
    var target = $(hash);
    var position = target.offset().top;
    $('body,html').animate({scrollTop:position}, 500);
  }
})

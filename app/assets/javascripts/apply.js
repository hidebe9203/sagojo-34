$(window).on('load', function() {
  if(document.URL.match(/works\/\d+\/forms\/new/)) {
    postId = $('#applyId').val();

    $('.aplication-area-03.profile-form').append('<input type="submit" name="commit" value="応募する" class="btn w-100" id="prof-update" data-disable-with="応募する">');
  }
})

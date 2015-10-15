$(function() {
  if ($(window).width() < 992 ){
      $('.refine-submit').addClass('text-center');
    }
  $(window).resize(function(){
    if ($(window).width() < 992 ){
      $('.refine-submit').addClass('text-center');
    }
    else {
      $('.refine-submit').removeClass('text-center');
    }
  });
});

setTimeout(function(){
  $('.alert').fadeOut()
  $('.notice').fadeOut()
}, 3000)


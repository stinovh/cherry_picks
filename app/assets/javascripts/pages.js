$(function() {
  $('#first-one').on('click', function() {
    if (!$('#first-one').hasClass('active')){
      $('#first-one').addClass('active');
    }
    $('#second-one').removeClass('active');
    $('#third-one').removeClass('active');
  });
   $('#second-one').on('click', function() {
    if (!$('#second-one').hasClass('active')){
      $('#second-one').addClass('active');
    }
    $('#first-one').removeClass('active');
    $('#third-one').removeClass('active');
  });
    $('#third-one').on('click', function() {
    if (!$('#third-one').hasClass('active')){
      $('#third-one').addClass('active');
    }
    $('#second-one').removeClass('active');
    $('#first-one').removeClass('active');
  });
});

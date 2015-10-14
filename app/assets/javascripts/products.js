$('#product_campaign_platform').on('change', function() {
if($('#product_campaign_platform').val()=="Kickstarter") {
  // code to be executed if condition is true
  $('.hidden-kick').hide()
}
else {
  $('.hidden-kick').show()
}
});

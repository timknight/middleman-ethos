$(function () {
  $('form.validate').each(function(){
    $(this).validate({
      highlight: function(label) {
        $(label).closest('.form-group').addClass('has-error');
      },
      success: function(label) {
        $(label).addClass('valid').closest('.form-group').removeClass('has-error');
      }
    });
  });  
});
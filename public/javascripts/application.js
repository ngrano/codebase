// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function(){
  $('a[rel=tipsy], img[rel=tipsy]').tipsy({gravity: 's'});

  $('.hide_flash').click(function(){
    $(this).parent().hide('fast');
  });
});
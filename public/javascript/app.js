/*global $ */
$(document).ready(function(){
  
  var tabs = ['contact', 'about', 'prototype'];

  function eventHandler(event){
    event.preventDefault();
    tabs.forEach(function(item){
      if(event.currentTarget.id === item){
        $('#' + item).addClass('active');
        $('.'+item).removeClass('hidden');
      } else {
        $('#' + item).removeClass('active');
        $('.' + item).addClass('hidden');
      }
    });
  }

  $('#prototype').click(eventHandler);
  $('#about').click(eventHandler);
  $('#contact').click(eventHandler);

});
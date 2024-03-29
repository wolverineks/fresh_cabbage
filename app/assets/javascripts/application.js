// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function () {
  // Actions to do
  $('.owl-carousel').owlCarousel({
    loop:true,
    margin:16,
    responsiveClass:true,
    responsive:{
      0:{
          items:1
      },
      300:{
          items:3
      },
      600:{
          items:5
      },
      800:{
          items:8
      },
      900:{
          items: 7
      },
      1000:{
          items: 8
      }
    }
  })
});



// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require rails-ujs
//= require jquery
//= require materialize
//= require turbolinks
//= require_tree .

// DROPDOWN CODE:
$(document).ready(function() {
    $(".dropdown-trigger").dropdown();
    $('.sidenav').sidenav();
  });


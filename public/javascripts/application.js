// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#info_ville_instant_places").tokenInput("/villes.json", {
    crossDomain: false,
  });
});
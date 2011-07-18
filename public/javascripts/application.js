// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#info_country_tokens").tokenInput("/countries.json", {
    crossDomain: false,
  });
});

$(function() {
  $("#info_ville_tokens").tokenInput("/villes.json", {
    crossDomain: false,
  });
});
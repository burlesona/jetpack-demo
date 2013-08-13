#  APPLICATION MANIFEST
#= require jquery
#= require jquery_ujs
#= require jetpack
#= require_tree .

jQuery ->
  $('ul.tabs').tabs()
  $('ul.pills').pills()

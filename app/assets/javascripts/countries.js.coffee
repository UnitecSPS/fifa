# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(document).on "ajax:success", "#countries_filter", (e, data, status, xhr) ->
    $(".js_country_table").html(data)

  $(document).on "ajax:success", "#new_player", (e, data, status, xhr) ->
    $(".js_country_players").append(data)

  $("#q").on "keyup", ->
    $("#submit_filter").click()

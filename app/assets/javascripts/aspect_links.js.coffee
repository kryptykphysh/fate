# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("#add_existing_aspect_toggle").click ->
	$("#add_existing_aspect_form").slideToggle()

$("#add_new_aspect_toggle").click ->
	$("#add_new_aspect_form").slideToggle()
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery.fn.submitOnCheck = ->
  @find('input[type=submit]').remove()
  this.find('input[type=checkbox]').click ->
    $(@).parent('form').submit()
    @  
$ ->
  $('.edit_task').submitOnCheck()

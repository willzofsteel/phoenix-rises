# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

connect_socket = () ->
  socket = new WebSocket('ws://localhost:8888')
  socket.onmessage = (mess) ->
    console.log(mess)
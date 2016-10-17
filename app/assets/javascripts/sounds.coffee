# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
  $ ->	$(".sound-picture").height($(".sound-picture").width())
) jQuery

(($) ->
	@handleAudioImageClick = (name) ->
		audiostr = "#" + name + "-audio"
		console.log(audiostr)
		audio = $(audiostr)[0];
		if audio.paused
			audio.play()
		else
			audio.pause()
) jQuery

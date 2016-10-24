# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
  $ ->	$(".sound-picture").height($(".sound-picture").width() * 0.7)
) jQuery

(($) ->
	@handleAudioImageClick = (name) ->
		audiostr = "#" + name + "-audio"
		playpausestr = "#sound-play-pause-" + name
		audio = $(audiostr)[0];
		if audio.paused
			audio.play()
			$(playpausestr).removeClass("fa-play")
			$(playpausestr).addClass("fa-pause")
		else
			audio.pause()
			$(playpausestr).addClass("fa-play")
			$(playpausestr).removeClass("fa-pause")
) jQuery

(($) ->
	@handleVolume = (id) ->
		volume = $("#sound-volume-" + id).val()
		$("#" + id + "-audio").prop("volume", volume / 100.0)
		volumeicon = $("#volume-icon-" + id)

		if volume <= 1
			volumeicon.removeClass("fa-volume-up")
			volumeicon.removeClass("fa-volume-down")
			volumeicon.addClass("fa-volume-off")
		if volume < 40 and volume > 1
			volumeicon.removeClass("fa-volume-up")
			volumeicon.removeClass("fa-volume-off")
			volumeicon.addClass("fa-volume-down")
		if volume > 75
			volumeicon.removeClass("fa-volume-down")
			volumeicon.removeClass("fa-volume-off")
			volumeicon.addClass("fa-volume-up")
) jQuery

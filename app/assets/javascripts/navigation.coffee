$(document).ready ->
	#hover nav-item fades in background
	$("[nav-toggle]").hover ->
		$( this ).fadeTo( 0, 0, ->
			$( this ).fadeTo( 500, 1))
	#click nav-item to open new content
	$("[nav-toggle]").click -> 
		href = $(this).attr("nav-toggle")
		$( '#mainContent' ).slideUp("slow", ->
			$( '#mainContent' ).load("test.html")
			$( "#mainContent" ).slideDown( "slow" ))
	#hover icon turn it to colour
	$(".icon").mouseenter ->
		$(this).animate(opacity: .01)

	$(".icon").mouseleave ->
		$(this).animate(opacity: 1)
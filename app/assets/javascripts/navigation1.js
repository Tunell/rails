$(document).ready(function(){
	$("[nav-toggle]").click(function(){
		var href = $(this).attr("nav-toggle");
		$("#mainContent").slideUp ('slow', function(){
			document.getElementById("mainContent").innerHTML = href
			$( "#mainContent" ).slideDown( "slow" );
		});
	});
});
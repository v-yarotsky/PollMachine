$(function() {
	$(".poll").hover(function() {
		$(this).stop(true, true).addClass('hovered', 200);
	}, function() {
		$(this).stop(true, true).removeClass('hovered', 100);
	});
});
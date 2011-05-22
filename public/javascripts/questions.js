$(function() {
	var $question = $(".question").hide().filter(":first").show();
	var $buttons = ("<div class='nav_buttons'>" +
									"<div class='button prev_question'>Previous</div>" +
									"<div class='button next_question'>Next</div>" +
									"<div class='button finish'>Finish</div>" +
									"</div>");
	$(".question .answer:first-child input[type='radio']").click();
	$question.parent().append($buttons);
	$(".button").click(handleNavClick);
	updateNavLinks();
	$("#poll_submit").hide();
});

var handleNavClick = function() {
	var $button = $(this);
	var $question = $(".question:visible").hide();
	if ($button.is(".next_question")) {
		$question.next().show();
	} else if ($button.is(".prev_question")) {
		$question.prev().show();
	} else {
		$("#poll_submit").click();
	}
	updateNavLinks();
};

var updateNavLinks = function() {
	var $questions = $(".question");
	var $buttons = $(".button");
	$buttons.hide();
	if ($questions.filter(":first").is(":visible")) {
		console.log("first");
		$buttons.filter(".next_question").show();
	} else if ($questions.filter(":last").is(":visible")) {
		console.log("last");
		$buttons.filter(".prev_question, .finish").show();
	} else if($questions.filter(":visible").length) {
		console.log("regular");
		$buttons.filter(".next_question, .prev_question").show();
	}
};

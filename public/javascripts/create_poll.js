$(function() {
	$("form").bind("nested:fieldAdded", initializePositions).bind("nested:fieldRemoved", initializePositions);
	initializePositions();
	bindMoveButtons();
});

var initializePositions = function() {
	var $questions = $(".question:visible");
	$questions.each(function() {
		var $positionField = $(this).find("input.position");
		$positionField.val($questions.index(this));
		initializeAnswerPositions(this)
	});
};

var initializeAnswerPositions = function(element) {
	$answers = $(element).find(".predefined_answer:visible");
	$answers.each(function() {
		var $positionField = $(this).find("input.position");
		$positionField.val($answers.index(this));
	});
};

var bindMoveButtons = function() {
	$(".move_up").live("click", function(event) {
		var $movable = $(this).closest(".fields");
		if ($movable.prev(".fields").length) {
			$prev = $movable.prev();
			$movable.detach().insertBefore($prev);
			initializePositions();
		}
		event.preventDefault();
	});
	$(".move_down").live("click", function(event) {
		var $movable = $(this).closest(".fields");
		if ($movable.next(".fields").length) {
			$next = $movable.next();
			$movable.detach().insertAfter($next);
			initializePositions();
		}
		event.preventDefault();
	});
};

var updateMoveLinks = function(element) {
	// var $container;
	// if (element) {
	// 	$container = $(element).closest(".fields").parent();
	// } else {
	// 	$container = $(".fields").parent();
	// }
	// $container.find(".move_up").each(function() {
	// 	var $link = $(this);
	// 	var $linkContainer = $link.closest(".fields");
	// 	$link.toggle($linkContainer.prev(".fields").length > 0);
	// });
	// $container.find(".move_down").each(function() {
	// 	var $link = $(this);
	// 	var $linkContainer = $link.closest(".fields");
	// 	$link.toggle($linkContainer.next(".fields").length > 0);
	// });
};
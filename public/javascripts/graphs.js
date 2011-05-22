var chart;

$(function() {
	$(".question").live("click", function() {
		$(".question").removeClass("selected");
		$(this).addClass("selected");
		buildChart(this);
	}).filter(":first").click();
});

var buildChart = function(question) {
	var $question = $(question);
	var $answers = $question.find(".answer");
	var data = [];
	$.each($answers, function(idx, element) {
		var $answer = $(element);
		var count = $answer.find(".count").data("count");
		data.push([$answer.find(".title").text(), count]);
	});
	
	var tooltipFormatter = function() {
		return '<b>'+ this.point.name +'</b>: <span>'+ this.percentage.toFixed(2) +' % (' + this.y + ')</span>' ;
	};
	
	var pointFormatter = function() {
		if (this.percentage) {
			return this.percentage.toFixed(2) + "%";
		} else {
			return '';
		}
	};
	
	var genericOptions = {
		chart: {
			renderTo: "graph",
			marginLeft: 100,
			marginRight: 100
		},
		title: {
			text: $question.find("h2").text()
		},
	  tooltip: {
      formatter: tooltipFormatter
	  },
		credits: {
			href: "http://127.0.0.1",
			text: "<b>PollMachine</b>:: minimalistic survey system"
		},
		legend: {

		},
		series: [{
			data: data
		}]
	};
	
	var pieOptions = {
		chart: {
			defaultSeriesType: "pie"
		},
		plotOptions: {
			pie: {
		  	allowPointSelect: true,
		    cursor: 'pointer',
		    dataLabels: {
		      enabled: true,
		      color: '#000000',
		      connectorColor: '#000000',
		      formatter: pointFormatter,
					distance: -30
		    },
				showInLegend: true
		 	}
		}
	};
	var options = $.extend(true, genericOptions, pieOptions);
	chart = new Highcharts.Chart(options);
};
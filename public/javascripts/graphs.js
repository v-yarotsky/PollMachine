$(function() {
	$(".question").live("click", function() {
		var $question = $(this);
		var $answers = $question.find(".answer");
		var data = [];
		$.each($answers, function(idx, element) {
			var $answer = $(element);
			data.push([$answer.find(".title").text(), $answer.find(".count").data("count")]);
		});
		console.log(data);
		
		var genericOptions = {
			chart: {
				renderTo: "graph"
			},
			title: {
				text: $question.find("h2").text()
			},
		  tooltip: {
	      formatter: function() {
	        return '<b>'+ this.point.name +'</b>: '+ this.y +' %';
	      }
		  },
			credits: {
				href: "http://127.0.0.1",
				text: "<b>PollMachine</b>:: minimalistic survey system"
			}
		};
		
		var pieOptions = {
			plotOptions: {
				pie: {
			  	allowPointSelect: true,
			    cursor: 'pointer',
			    dataLabels: {
			      enabled: true,
			      color: '#000000',
			      connectorColor: '#000000',
			      formatter: function() {
			      	return '<b>'+ this.point.name +'</b>: '+ this.y +' %';
			      }
			    }
			 	}
			},
			series: [{
				type: 'pie',
				data: data
			}]
		};
		var options = $.extend(genericOptions, pieOptions);
		new Highcharts.Chart(options);
	});

});
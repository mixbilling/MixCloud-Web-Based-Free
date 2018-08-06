var chart;
function requestDatta(interface) {
	$.ajax({
		url: '?page=graph&interface='+interface,
		datatype: "json",
		success: function(data) {
			var midata = JSON.parse(data);
			if( midata.length > 0 ) {
				var TX=parseInt(midata[0].data);
				var RX=parseInt(midata[1].data);
				var x = (new Date()).getTime(); 
				shift=chart.series[0].data.length > 19;
				chart.series[0].addPoint([x, TX], true, shift);
				chart.series[1].addPoint([x, RX], true, shift);
				document.getElementById("graph-byte-tx").innerHTML=TX;
				document.getElementById("graph-byte-rx").innerHTML=RX;
			}else{
				document.getElementById("graph-byte-tx").innerHTML="- / -";
			}
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) { 
			console.error("Status: " + textStatus + " request: " + XMLHttpRequest); console.error("Error: " + errorThrown); 
		}       
	});
}	

$(document).ready(function() {
	Highcharts.setOptions({
		global: {
			useUTC: false
		}
	});
	chart = new Highcharts.Chart({
		colors: ["#2196F3","#FF0000"],
		chart: {
			renderTo: 'graph',
			animation: Highcharts.svg,
			type: 'line',
			events: {
				load: function () {
					setInterval(function () {
						requestDatta(document.getElementById("interface").value);
					}, 1000);
				}				
			}
		},
		title: {
			text: ' ' 
		},
		xAxis: {
			type: 'datetime',
			tickPixelInterval: 150,
			maxZoom: 20 * 1000
		},
		yAxis: {
			minPadding: 0,
			maxPadding: 0,
			title: {
				text: '',
				margin: 0
			}
		},
		series: [{
			name: 'TX',
			data: []
		}, {
			name: 'RX',
			data: []
		}]
	});
});
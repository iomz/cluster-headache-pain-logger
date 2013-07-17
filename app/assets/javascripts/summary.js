//=require highcharts
//=require exporting
  
$(function () {
    var keys = [];
    var values = [];
    for (var i in gon.time_counts){
        keys.push(i);
        values.push(gon.time_counts[i]);
    }
    $('#time_counts').highcharts({
        chart: {
            type: 'column',
            margin: [50, 50, 100, 80]
        },
        title: {
            text: 'Hourly attack summary'
        },
        subtitle: {
            text: 'Bar chart'
        },
        xAxis: {
            categories: keys,
            title: {
                text: 'Hour'
            },
            labels: {
                  rotation: -45,
                  align: 'right',
                  style: {
                      fontSize: '13px',
                      fontFamily: 'Verdana, sans-serif'
                  }
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Attacks'
            }
        },
        tooltip: {
            shared: true
        },
        legend: {
            enabled: false
        },
        series: [{
            name: 'counts',
            data: values,
            dataLabels: {
                enabled: true,
                rotation: -90,
                color:'#FFFFFF',
                align: 'right',
                x: 4,
                y: 10,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    }); // highcharts

    var keys = [];
    var values = [];
    for (var i in gon.max_counts){
        keys.push(i);
        values.push(gon.max_counts[i]);
    }
    $('#max_counts').highcharts({
        chart: {
            zoomType: 'x',
            spacingRight: 20
        },
        title: {
            text: 'Attack counts per days'
        },
        subtitle: {
            text: 'Time series'
        },
        xAxis: {
            title: {
                text: 'Date'
            },
            categories: keys,
            dataLabels: {
                enabled: true
            }
        },
        yAxis: {
            title: {
                text: 'Attacks'
            }
        },
        tooltip: {
            shared: true
        },
        legend: {
            enabled: false
        },
        plotOptions: {
            area: {
                fillColor: {
                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1},
                    stops: [
                        [0, Highcharts.getOptions().colors[0]],
                        [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                    ]
                },
                lineWidth: 1,
                marker: {
                    enabled: false
                },
                shadow: false,
                states: {
                    hover: {
                        lineWidth: 1
                    }
                },
                threshold: null
            }
        },
    
        series: [{
            name: 'Attacks',
            type: 'area',
            data: values,
        }]
    });
    
    var keys = [];
    var values = [];
    for (var i in gon.durations){
        keys.push(i);
        values.push(gon.durations[i]);
    }
    $('#durations').highcharts({
        chart: {
            type: 'areaspline'
        },
        title: {
            text: 'Duration changes'
        },
        xAxis: {
            title: {
                text: "Date"
            },
            categories: keys
        },
        yAxis: {
            title: {
                text: 'Duration'
            }
        },
        tooltip: {
            shared: true,
            valueSuffix: ' minutes'
        },
        legend: {
            enabled: false
        },
        credits: {
            enabled: false
        },
        plotOptions: {
            areaspline: {
                fillOpacity: 0.5
            }
        },
        series: [{
            name: 'Duration',
            data: values
        }]
    });
    
    var keys = [];
    var values = [];
    for (var i in gon.pain_levels){
        keys.push(i);
        values.push(gon.pain_levels[i]);
    }
    $('#pain_levels').highcharts({
        chart: {
            type: 'line'
        },
        title: {
            text: 'Pain level transition'
        },
        subtitle: {
            text: 'Line chart'
        },
        xAxis: {
            categories: keys,
            title: {
                text: 'Date'
            }
        },
        yAxis: {
            title: {
                text: 'Pain level'
            }
        },
        tooltip: {
            enabled: false
        },
        legend: {
            enabled: false
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: 'Pain level',
            data: values 
        }]
    });
    
    var keys = [];
    var values = [];
    for (var i in gon.drug_counts){
        keys.push(i);
        values.push(gon.drug_counts[i]);
    }
    $('#drug_counts').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Drug ratio'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage}%</b>',
        	percentageDecimals: 1
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    formatter: function() {
                        return '<b>'+ this.point.name +'</b>: '+ this.percentage +' %';
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            data: [
                [keys[0],   Number((values[0]/gon.dose_count).toFixed(1))],
                [keys[1],   Number((values[1]/gon.dose_count).toFixed(1))]
            ]
        }]
    });
    
    var keys = [];
    var values = [];
    for (var i in gon.dose_times){
        keys.push(i);
        values.push(gon.dose_times[i]);
    }
    $('#dose_times').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: 'Minuts until dosing after attack'
        },
        subtitle: {
            text: 'Bar chart'
        },
        xAxis: {
            categories: keys,
            title: {
                text: 'Minutes'
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Counts',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' counts'
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            enabled: false
        },
        credits: {
            enabled: false
        },
        series: [{
            name: 'Minutes',
            data: values
        }]
    });

}); // jquery

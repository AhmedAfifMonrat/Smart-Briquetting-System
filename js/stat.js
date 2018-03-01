var chartData = generateChartData();

var chart = AmCharts.makeChart("tempdiv", {
    "type": "serial",
    "theme": "dark",
    "marginRight": 40,
    "marginLeft": 40,
    "autoMarginOffset": 20,
    "dataProvider": chartData,
    "valueAxes": [{
        "position": "left",
        //"title": "Unique visitors"
    }],
    "balloon": {
        "borderThickness": 1,
        "shadowAlpha": 0
    },
    "graphs": [{
        "id": "g1",
        "balloon":{
          "drop":true,
          "adjustBorderColor":false,
          "color":"#ffffff"
        },
        "bullet": "round",
        "bulletBorderAlpha": 1,
        "bulletColor": "#FFFFFF",
        "bulletSize": 5,
        "hideBulletsCount": 50,
        "lineThickness": 2,
        "title": "red line",
        "useLineColorForBulletBorder": true,
        "valueField": "value",
        "balloonText": "<span style='font-size:18px;'>[[value]]</span>"
    }],
       "chartCursor": {
        "pan": true,
        "valueLineEnabled": true,
        "valueLineBalloonEnabled": true,
        "cursorAlpha":1,
        "cursorColor":"#258cbb",
        "limitToGraph":"g1",
        "valueLineAlpha":0.2,
        "valueZoomable":true,
		"categoryBalloonDateFormat": "JJ:NN, DD MMMM",
        "cursorPosition": "mouse"
	
    },
    "valueScrollbar":{
      "oppositeAxis":false,
      "offset":50,
      "scrollbarHeight":10
    },
    "categoryField": "date",
    "categoryAxis": {
		"minPeriod": "mm",
        "parseDates": true,
        "dashLength": 1,
        "minorGridEnabled": true
    },
	 "export": {
        "enabled": true,
         "dateFormat": "YYYY-MM-DD HH:NN:SS"
    }
    
});

chart.addListener("dataUpdated", zoomChart);
zoomChart();
function zoomChart() {
    // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
    chart.zoomToIndexes(chartData.length - 250, chartData.length - 100);
}
//function generateChartData() {
    //var chartData = [];
    // current date
    //var firstDate = new Date();
    // now set 500 minutes back
    //firstDate.setMinutes(firstDate.getDate() - 1000);

    // and generate 500 data items
  
        //var newDate = new Date(firstDate);
        // each time we add one minute
        //newDate.setMinutes(newDate.getMinutes() + i);
        // some random number
       // var visits = Math.round(Math.random() * 40 + 10 + i + Math.random() * i / 5);
        // add data item to the array
		
		//var answer=[{"temperature":"24.00","humitime":"2016-12-06 16:41:12"},{"temperature":"25.00","humitime":"2016-12-06 16:45:12"}];
		//var obj = JSON.parse(answer);
		 // for (var i = 0; i < 2; i++) {
		//var newDate=answer[i].humitime;
		//var visits=answer[i].temperature;
       // chartData.push({
           // date: newDate,
           // value: visits
        //});
    //}
    //return chartData;
//}

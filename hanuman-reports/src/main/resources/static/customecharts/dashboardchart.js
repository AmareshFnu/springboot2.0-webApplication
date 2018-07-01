AmCharts.addInitHandler(function (chart) {
    // cycle through all data points and assign color per Y value
    for (var x in chart.dataProvider) {
      var dp = chart.dataProvider[x];
      if (dp.y > 10)
        dp.color = "#ff0000";
      else if (dp.y > -1)
        dp.color = "#dc3545";
      else
        dp.color = "#dc3545";
    }
  }, ['xy']);

  var chart1 = AmCharts.makeChart("bubblechart", {
    "type": "xy",
    "dataProvider": [{
      "y2": 44,
      "x2": 1,
      "skipped": 41
    },
    {
      "y2": 44,
      "x2": 1,
      "skipped": 40
    },{
      "y2": 44,
      "x2": 1,
      "skipped": 36
    }, {

      "y2": 12,
      "x2": 2,
      "skipped": 12
    }, 
    {
      "y1": 60,
      "x1": 1,
      "passed": 60
    }, 
    {
      "y1": 60,
      "x1": 1,
      "passed": 60
    },{

      "y1": 58,
      "x1": 2,
      "passed": 48
    },{

      "y4": 28,
      "x4": 2,
      "passed": 48
    },   {

      "y3": 2,
      "x3": 1,
      "failed": 4
    }, {
     "y3": 2,
      "x3": 3,
      "failed": 4
    },
     {

      "y3": 20,
      "x3": 2,
      "failed": 30
    }, {

      "y3": 2,
      "x3": 1,
      "failed": 4
    },
   
   
    
    {

      "y4": 2,
      "x4": 1,
      "failed": 3
    },
    {

      "y4": 41,
      "x4": 2,
      "failed": 60
    }],
    "valueAxes": [{
      "integersOnly": true,
      "maximum": 6,
      "minimum": 0,
      "dashLength": 5,
      "position": "bottom",
      "autoGridCount": false,
      "gridCount": 10,
     // "title": "Place taken",
      "axisAlpha": 1,
      "pointPosition": "start",
      "integersOnly": true,
      "showFirstLabel": false,
     // "showLastLabel": true,
      "labelFunction": function (failed) {
        return "Aplication " + failed;
      },
        "gridAlpha":0,

    }, {
      "minMaxMultiplier": 1,
      "axisAlpha": 0,
      "position": "left",
      "integersOnly": true,
      "gridAlpha":0,

    }],

    "startDuration": 1,
  
    "graphs": [{
      "balloonText": "x:<b>[[x]]</b> y:<b>[[y]]</b><br>value:<b>[[value]]</b>",
      "bullet": "circle",
      "bulletBorderAlpha": 0.2,
      "bulletAlpha": 0.8,
      "colorField": "color",
      "lineAlpha": 0,
      "fillAlphas": 0,
      "valueField": "passed",
      "xField": "x1",
      "yField": "y1",
      "maxBulletSize": 60
    }, {
      "balloonText": "x:<b>[[x]]</b> y:<b>[[y]]</b><br>value:<b>[[value]]</b>",
      "bullet": "circle",
      "xField": "x2",
      "yField": "y2",
      "bulletBorderAlpha": 0.2,
      "bulletAlpha": 0.8,
      "colorField": "#fd7e14",
      "lineAlpha": 0,
      "fillAlphas": 0,
      "valueField": "skipped",
      "xField": "x2",
      "yField": "y2",
      "maxBulletSize": 60
    }, {
      "balloonText": "x:<b>[[x]]</b> y:<b>[[y]]</b><br>value:<b>[[value]]</b>",
      "bullet": "circle",
      "bulletBorderAlpha": 0.2,
      "bulletAlpha": 0.8,
      "valueField": "failed",
      "colorField": "black",
      "lineAlpha": 0,
      "fillAlphas": 0,
      "xField": "x3",
      "yField": "y3",
      "maxBulletSize": 60
    }
    ],

    "chartCursor": {
      "cursorAlpha": 0,
      "zoomable": false
    },

  });

  function labelFunction(item, text) {
    if (text == "total") {
      var index = item.index;
      var serialDataItem = chart.chartData[index];
      var valueAxes = serialDataItem.axes;
      var sum = 0;
      for (var a in valueAxes) {
        var graphs = valueAxes[a].graphs;
        for (var g in graphs) {
          var graph = graphs[g];
          if (!graph.graph.hidden) {
            sum += graph.values.value;
          }
        }
      }
      return AmCharts.roundTo(sum, 5);
    }
  }
    var chart1 = AmCharts.makeChart("chartdiv1", {
        "type": "serial",
        "theme": "none",
        "categoryField": "applicationName",
        "rotate": true,
        "startDuration": 1,
        "categoryAxis": {
          "gridPosition": "start",
          "position": "left",
         
        },
        "dataLoader": {
          "enabled": true,
          "url": "http://10.1.2.109:8083/pokeit/monthreportallapp/" ,
          "format": "json"
        },
        "valueAxes": [{
          "gridColor": "#FFFFFF",
          "gridAlpha": 0.1,
          "dashLength": 0
        }],
        "gridAboveGraphs": false,
        "startDuration": 1,
        "graphs": [{
          "fillAlphas": 0.8,
          "lineAlpha": 0.1,
          "type": "column",
          "valueField": "passed",
          "fixedColumnWidth": 8,
          "fillColors": "#28a745"
        },
        {
          "fillAlphas": 0.8,
          "lineAlpha": 0.1,
          "type": "column",
          "valueField": "failed",
          "fixedColumnWidth": 8,
          "fillColors": "#dc3545"
  
        },
        {
          "fillAlphas": 0.8,
          "lineAlpha": 0.2,
          "type": "column",
          "valueField": "passed",
          "valueField": "failed",
          "valueField": "skipped",
          "fixedColumnWidth": 8,
         
          "fillColors": "#ffc107"
        }],
        "chartCursor": {
          "categoryBalloonEnabled": false,
          "cursorAlpha": 0,
          "zoomable": false
        },
        "categoryField": "applicationName",
        "categoryAxis": {
          "gridPosition": "middle",
          "gridAlpha": 0,
          "tickPosition": "middle",
          "tickLength": '0'
  
        },
        "export": {
          "enabled": false
        }
  
      });
  
      var chart2 = AmCharts.makeChart("monthlyportal", {
        "type": "serial",
       "theme": "none",
      "categoryField": "applicationName",
        "rotate": true,
        "startDuration": 1,
        "categoryAxis": {
            "gridPosition": "start",
            "position": "left"
      },
      "dataLoader": {
            "enabled": true,
            "url": "http://10.1.2.109:8083/pokeit/monthreportallapp",
            "format": "json"
        },
      "valueAxes": [ {
        "gridColor": "#FFFFFF",
        "gridAlpha": 0.1,
        "dashLength": 0
      } ],
      "gridAboveGraphs": false,
      "startDuration": 1,
      "graphs": [ {
        "fillAlphas": 0.8,
        "lineAlpha": 0.1,
        "type": "column",
         "valueField": "passed",
        "fixedColumnWidth": 8,
        "fillColors":"#28a745"
      },
      { 
        "fillAlphas": 0.8,
        "lineAlpha": 0.1,
        "type": "column",
        "valueField": "failed",
        "fixedColumnWidth": 8,
         "fillColors":"#dc3545"
        
      },
      {
        "fillAlphas": 0.8,
        "lineAlpha": 0.2,
        "type": "column",
        "valueField": "passed",
        "valueField": "failed",
       "valueField": "skipped",
        "fixedColumnWidth": 8,
        "fillColors":"#ffc107" 
      }],
      "chartCursor": {
        "categoryBalloonEnabled": false,
        "cursorAlpha": 0,
        "zoomable": false
      },
      "categoryField": "applicationName",
      "categoryAxis": {
        "gridPosition": "middle",
        "gridAlpha": 0,
       "tickPosition": "middle",
        "tickLength":'0'
    
      },
      "export": {
        "enabled": false
      },
        "dataProvider": []
    
    });
         
    var chart3 = AmCharts.makeChart("piecharts", {
        "type": "pie",
       "theme": "none",
      "labelText": "[[percents]]%",
      "autoMargins": false,
      "areaValue": 30, //value used for segment height/area
      "realValue": 300,
    "innerRadius": "40%",
     "legend": {
     "markerType": "square",
     "position": "right",
     "autoMargins": false
   },
       "dataLoader": {
        "enabled": true,
        "url": "http://10.1.2.109:8083/pokeit/defectspiechartcount",
        "format": "json"
        },
       "valueField": "value",
       "titleField": "priority",
       "colorField": "color",
       "balloon": {
         "fixedPosition": true
       }
     });
                 
 
     var chart4 = AmCharts.makeChart("chartdiv2", {
       "type": "serial",
       "theme": "none",
       "categoryField": "week",
       "dataLoader": {
         "enabled": true,
         "url": "http://10.1.2.109:8083/pokeit/weekreportallapp",
         "format": "json"
       },
       "valueAxes": [{
         "gridColor": "#FFFFFF",
         "gridAlpha": 0.1,
         "dashLength": 0
       }],
       "gridAboveGraphs": false,
       "startDuration": 1,
       "graphs": [{
         "fillAlphas": 0.8,
         "lineAlpha": 0.1,
         "type": "column",
         "valueField": "passed",
         "fixedColumnWidth": 8,
         "fillColors": "#28a745"
       },
       {
         "fillAlphas": 0.8,
         "lineAlpha": 0.1,
         "type": "column",
         "valueField": "failed",
         "fixedColumnWidth": 8,
         "fillColors": "#dc3545"
 
       },
 
       {
         "fillAlphas": 0.8,
         "lineAlpha": 0.2,
         "type": "column",
         "valueField": "passed",
         "valueField": "failed",
         "valueField": "skipped",
         "fixedColumnWidth": 8,
         "fillColors": "#ffc107"
       }],
       "chartCursor": {
         "categoryBalloonEnabled": false,
         "cursorAlpha": 0,
         "zoomable": false
       },
       "categoryField": "week",
       "categoryAxis": {
         "gridPosition": "middle",
         "gridAlpha": 0,
         "tickPosition": "middle",
         "tickLength": '0'
 
       },
 
       "export": {
         "enabled": false
       }
     });
 

//   var chart = AmCharts.makeChart("chartdiv2", {
//     "type": "serial",
//     "theme": "none",
//     "categoryField": "week",
//     "dataLoader": {
//       "enabled": true,
//       "url": "http://10.1.2.109:8083/pokeit/weekreportallapp",
//       "format": "json"
//     },
//     "valueAxes": [{
//       "gridColor": "#FFFFFF",
//       "gridAlpha": 0.1,
//       "dashLength": 0
//     }],
//     "gridAboveGraphs": false,
//     "startDuration": 1,
//     "graphs": [{
//       "fillAlphas": 0.8,
//       "lineAlpha": 0.1,
//       "type": "column",
//       "valueField": "passed",
//       "fixedColumnWidth": 8,
//       "fillColors": "#28a745"
//     },
//     {
//       "fillAlphas": 0.8,
//       "lineAlpha": 0.1,
//       "type": "column",
//       "valueField": "failed",
//       "fixedColumnWidth": 8,
//       "fillColors": "#dc3545"

//     },

//     {
//       "fillAlphas": 0.8,
//       "lineAlpha": 0.2,
//       "type": "column",
//       "valueField": "passed",
//       "valueField": "failed",
//       "valueField": "skipped",
//       "fixedColumnWidth": 8,
//       "fillColors": "#ffc107"
//     }],
//     "chartCursor": {
//       "categoryBalloonEnabled": false,
//       "cursorAlpha": 0,
//       "zoomable": false
//     },
//     "categoryField": "week",
//     "categoryAxis": {
//       "gridPosition": "middle",
//       "gridAlpha": 0,
//       "tickPosition": "middle",
//       "tickLength": '0'

//     },

//     "export": {
//       "enabled": false
//     }
//   });

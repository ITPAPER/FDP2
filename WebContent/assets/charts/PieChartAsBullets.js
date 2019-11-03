am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var data = [{
  "수술명": "코콜이수술",
  "환자수": 3905,
  "pie": [{
    "소계": 3343,
    "성별": "남자"
  }, {
    "소계": 562,
    "성별": "여자"
  }]
}, {
  "수술명": "갑상선수술",
  "환자수": 30786,
  "pie": [{
    "소계": 7373,
    "성별": "남자"
  }, {
    "소계": 23413,
    "성별": "여자"
  }]
}, {
  "수술명": "상부위장관내시경(n/100)",
  "환자수": 22791.00,
  "pie": [{
    "소계": 11009.33,
    "성별": "남자"
  }, {
    "소계": 11781.67,
    "성별": "여자"
  }]
}, {
	  "수술명": "응급의료관리료발생현황(n/100)",
	  "환자수": 46708.76,
	  "pie": [{
	    "소계": 23641.33,
	    "성별": "남자"
	  }, {
	    "소계": 23067.43,
	    "성별": "여자"
	 }]
}];

// Create chart instance
var chart = am4core.create("chartdiv2", am4charts.XYChart);
chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

// Add data
chart.data = data;

// Create axes
var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.dataFields.category = "수술명";
categoryAxis.renderer.grid.template.disabled = true;
 
var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.title.text = "2018년 환자 수";
valueAxis.min = 0;
valueAxis.renderer.baseGrid.disabled = true;
valueAxis.renderer.grid.template.strokeOpacity = 0.07;

// Create series
var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.valueY = "환자수";
series.dataFields.categoryX = "수술명";
series.tooltip.pointerOrientation = "vertical";

var columnTemplate = series.columns.template;
// add tooltip on column, not template, so that slices could also have tooltip
columnTemplate.column.tooltipText = "Series: {name}\nCategory: {categoryX}\nValue: {valueY}";
columnTemplate.column.tooltipY = 0;
columnTemplate.column.cornerRadiusTopLeft = 20;
columnTemplate.column.cornerRadiusTopRight = 20;
columnTemplate.strokeOpacity = 0;

// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
columnTemplate.adapter.add("fill", function(fill, target) {	
  var color = chart.colors.getIndex(target.dataItem.index * 3);
  return color;
});

// create pie chart as a column child
var pieChart = series.columns.template.createChild(am4charts.PieChart);
pieChart.width = am4core.percent(80);
pieChart.height = am4core.percent(80);
pieChart.align = "center";
pieChart.valign = "middle";
pieChart.dataFields.data = "pie";
 
var pieSeries = pieChart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "소계";
pieSeries.dataFields.category = "성별";
pieSeries.labels.template.disabled = true;
pieSeries.ticks.template.disabled = true;
pieSeries.slices.template.stroke = am4core.color("#ffffff");
pieSeries.slices.template.strokeWidth = 1;
pieSeries.slices.template.strokeOpacity = 0;

pieSeries.slices.template.adapter.add("fill", function(fill, target) {
  return am4core.color("#ffffff")
});
 
pieSeries.slices.template.adapter.add("fillOpacity", function(fillOpacity, target) {
  return (target.dataItem.index + 1) * 0.2;
});

pieSeries.hiddenState.properties.startAngle = -90;
pieSeries.hiddenState.properties.endAngle = 270;
}); // end am4core.ready()

 
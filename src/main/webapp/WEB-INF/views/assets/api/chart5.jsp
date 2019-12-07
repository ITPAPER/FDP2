<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#chartdiv {
		  width: 650px;
		  height: 500px;
		  left: 40px;
		  top:-50px;
		  position:absolute;
		  padding : 0 50px 0 0;
		  margin : 30px;
		}
		
		#chartdiv1 {
		  width: 600px;
		  height: 500px;
		  left: 700px;
		  top:-50px;
		  position:absolute;
		}
</style>
</head>
<body>
<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

<!-- Chart code -->
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end
console.log('${jsonList}')
// Create chart instance
var chart = am4core.create("chartdiv", am4charts.PieChart);

// Add data
chart.data = ${jsonList};

// Set inner radius
chart.innerRadius = am4core.percent(50);

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "sum_num_patient5";
pieSeries.dataFields.category = "dis_gender";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;

// This creates initial animation
pieSeries.hiddenState.properties.opacity = 1;
pieSeries.hiddenState.properties.endAngle = -90;
pieSeries.hiddenState.properties.startAngle = -90;

}); // end am4core.ready()


am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end
console.log('${jsonList}')
// Create chart instance
var chart = am4core.create("chartdiv1", am4charts.PieChart);

// Add data
chart.data = ${jsonList};

// Set inner radius
chart.innerRadius = am4core.percent(50);

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "sum_cost5";
pieSeries.dataFields.category = "dis_gender";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;

// This creates initial animation
pieSeries.hiddenState.properties.opacity = 1;
pieSeries.hiddenState.properties.endAngle = -90;
pieSeries.hiddenState.properties.startAngle = -90;

}); // end am4core.ready()
</script>
<div id="chartdiv"></div>
<div id="chartdiv1"></div>
</body>
</html>
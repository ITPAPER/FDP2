<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#chartdiv {
  width: 1300px;
  height: 800px;
}

</style>

</head>
<body>
<!-- Chart code -->
<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

<script>

am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end
console.log('${jsonList}')
// var list = ${jsonList};
// console.log(list);


// Create chart instance
var chart = am4core.create("chartdiv", am4charts.XYChart);

//Add data
chart.data = ${jsonList};


// Create axes
var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
dateAxis.renderer.grid.template.location = 0;
dateAxis.renderer.minGridDistance = 50;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.logarithmic = true;
valueAxis.renderer.minGridDistance = 20;

// Create series
var series = chart.series.push(new am4charts.LineSeries());
series.dataFields.valueY = "dis_num_patient";
series.dataFields.dateX = "dis_month";
series.tensionX = 0.8;
series.strokeWidth = 3;

var bullet = series.bullets.push(new am4charts.CircleBullet());
bullet.circle.fill = am4core.color("#fff");
bullet.circle.strokeWidth = 3;

// Add cursor
chart.cursor = new am4charts.XYCursor();
chart.cursor.fullWidthLineX = true;
chart.cursor.xAxis = dateAxis;
chart.cursor.lineX.strokeWidth = 0;
chart.cursor.lineX.fill = am4core.color("#000");
chart.cursor.lineX.fillOpacity = 0.1;

// Add scrollbar
chart.scrollbarX = new am4core.Scrollbar();

// Add a guide
let range = valueAxis.axisRanges.create();
range.value = 90.4;
range.grid.stroke = am4core.color("#396478");
range.grid.strokeWidth = 1;
range.grid.strokeOpacity = 1;
range.grid.strokeDasharray = "3,3";
range.label.inside = true;
range.label.text = "Average";
range.label.fill = range.grid.stroke;
range.label.verticalCenter = "bottom";

}); // end am4core.ready()
</script>
<div id="chartdiv"></div>

</body>
</html>
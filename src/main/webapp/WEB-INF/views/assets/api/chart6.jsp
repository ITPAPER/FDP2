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
</head>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 800px;
}
</style>
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
var chart = am4core.create("chartdiv", am4charts.XYChart);

// Add data
chart.data = ${jsonList};

// Create axes
var yAxis = chart.yAxes.push(new am4charts.CategoryAxis());
yAxis.dataFields.category = "dis_age";
yAxis.renderer.grid.template.location = 0;
yAxis.renderer.labels.template.fontSize = 10;
yAxis.renderer.minGridDistance = 10;

var xAxis = chart.xAxes.push(new am4charts.ValueAxis());

// Create series
var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.valueX = "sum_num_patient5";
series.dataFields.categoryY = "dis_age";
series.columns.template.tooltipText = "{categoryY}: [bold]{valueX}[/]";
series.columns.template.strokeWidth = 0;
series.columns.template.adapter.add("fill", function(fill, target) {
  if (target.dataItem) {
    switch(target.dataItem.dataContext.region) {
      case "남":
        return chart.colors.getIndex(0);
        break;
      case "여":
        return chart.colors.getIndex(1);
        break;
    }
  }
  return fill;
});

// Add ranges
function addRange(label, start, end, color) {
  var range = yAxis.axisRanges.create();
  range.category = start;
  range.endCategory = end;
  range.label.text = label;
  range.label.disabled = false;
  range.label.fill = color;
  range.label.location = 0;
  range.label.dx = -130;
  range.label.dy = 12;
  range.label.fontWeight = "bold";
  range.label.fontSize = 12;
  range.label.horizontalCenter = "left"
  range.label.inside = true;
  
  range.grid.stroke = am4core.color("#33333");
  range.grid.strokeOpacity = 1;
  range.tick.length = 200;
  range.tick.disabled = false;
  range.tick.strokeOpacity = 0.6;
  range.tick.stroke = am4core.color("#333333");
  range.tick.location = 0;
  
  range.locations.category = 1;
}



chart.cursor = new am4charts.XYCursor();

}); // end am4core.ready()
</script>

<div id="chartdiv"></div>

</body>
</html>
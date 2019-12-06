<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}

</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

<!-- Chart code -->
<script>
am4core.ready(function() {
	console.log('${jsonList}')
// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv", am4charts.XYChart);
chart.maskBullets = false;

var xAxis = chart.xAxes.push(new am4charts.CategoryAxis());
var yAxis = chart.yAxes.push(new am4charts.CategoryAxis());

xAxis.dataFields.category = "dis_month";
yAxis.dataFields.category = "dis_age";

xAxis.renderer.grid.template.disabled = true;
xAxis.renderer.minGridDistance = 40;

yAxis.renderer.grid.template.disabled = true;
yAxis.renderer.inversed = true;
yAxis.renderer.minGridDistance = 30;

var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.categoryX = "dis_month";
series.dataFields.categoryY = "dis_age";
series.dataFields.value = "dis_num_paitent";
series.sequencedInterpolation = true;
series.defaultState.transitionDuration = 3000;

var bgColor = new am4core.InterfaceColorSet().getFor("background");

var columnTemplate = series.columns.template;
columnTemplate.strokeWidth = 1;
columnTemplate.strokeOpacity = 0.2;
columnTemplate.stroke = bgColor;
columnTemplate.tooltipText = "{weekday}, {hour}: {value.workingValue.formatNumber('#.')}";
columnTemplate.width = am4core.percent(100);
columnTemplate.height = am4core.percent(100);

series.heatRules.push({
  target: columnTemplate,
  property: "fill",
  min: am4core.color(bgColor),
  max: chart.colors.getIndex(0)
});

// heat legend
var heatLegend = chart.bottomAxesContainer.createChild(am4charts.HeatLegend);
heatLegend.width = am4core.percent(100);
heatLegend.series = series;
heatLegend.valueAxis.renderer.labels.template.fontSize = 9;
heatLegend.valueAxis.renderer.minGridDistance = 30;

// heat legend behavior
series.columns.template.events.on("over", function(event) {
  handleHover(event.target);
})

series.columns.template.events.on("hit", function(event) {
  handleHover(event.target);
})

function handleHover(column) {
  if (!isNaN(column.dataItem.value)) {
    heatLegend.valueAxis.showTooltipAt(column.dataItem.value)
  }
  else {
    heatLegend.valueAxis.hideTooltip();
  }
}

series.columns.template.events.on("out", function(event) {
  heatLegend.valueAxis.hideTooltip();
})

chart.data = ${jsonList};

}); // end am4core.ready()
</script>

</body>
</html>
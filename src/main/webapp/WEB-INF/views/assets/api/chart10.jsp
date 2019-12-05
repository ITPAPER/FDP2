<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- Styles -->
	<style>

	</style>
</head>
<body>
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	
	<!-- Chart1 code -->
	<script>
	am4core.ready(function() {
	
	// Themes begin
	am4core.useTheme(am4themes_animated);
	// Themes end
	
	// Create chart instance
	var chart = am4core.create("chartdiv", am4charts.XYChart);
	
	// Add data
	chart.data = ${jsonList};
	
	// Create axes
	var categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
	categoryAxis.dataFields.category = "disRegion";
	categoryAxis.numberFormatter.numberFormat = "###,###";
	categoryAxis.renderer.inversed = true;
	categoryAxis.renderer.grid.template.location = 0;
	categoryAxis.renderer.cellStartLocation = 0.1;
	categoryAxis.renderer.cellEndLocation = 0.9;
	
	var  valueAxis = chart.xAxes.push(new am4charts.ValueAxis()); 
	valueAxis.renderer.opposite = true;
	
	// Create series
	function createSeries(field, name) {
	  var series = chart.series.push(new am4charts.ColumnSeries());
	  series.dataFields.valueX = field;
	  series.dataFields.categoryY = "disRegion";
	  series.name = name;
	  series.columns.template.tooltipText = "{name}: [bold]{valueX}[/]";
	  series.columns.template.height = am4core.percent(100);
	  series.sequencedInterpolation = true;
	
	  var valueLabel = series.bullets.push(new am4charts.LabelBullet());
	  //valueLabel.label.text = "{valueX}";
	  valueLabel.label.horizontalCenter = "left";
	  valueLabel.label.dx = 10;
	  valueLabel.label.hideOversized = false;
	  valueLabel.label.truncate = false;
	
	  var categoryLabel = series.bullets.push(new am4charts.LabelBullet());
	  //categoryLabel.label.text = "{name}";
	  categoryLabel.label.horizontalCenter = "right";
	  categoryLabel.label.dx = -10;
	  categoryLabel.label.fill = am4core.color("#fff");
	  categoryLabel.label.hideOversized = false;
	  categoryLabel.label.truncate = false;
	}
	
	createSeries("patientSum", "patientSum");

	}); // end am4core.ready()
	
	
	<!-- Chart code -->

	am4core.ready(function() {

	// Themes begin
	am4core.useTheme(am4themes_animated);
	// Themes end

	// Create chart instance
	var chart = am4core.create("chartdiv1", am4charts.PieChart);

	// Add data
	chart.data = ${jsonList};

	// Set inner radius
	chart.innerRadius = am4core.percent(40);

	// Add and configure Series
	var pieSeries = chart.series.push(new am4charts.PieSeries());
	pieSeries.dataFields.value = "patientSum";
	pieSeries.dataFields.category = "disRegion";
	pieSeries.slices.template.stroke = am4core.color("#fff");
	pieSeries.slices.template.strokeWidth = 3;
	pieSeries.slices.template.strokeOpacity = 1;

	// This creates initial animation
	pieSeries.hiddenState.properties.opacity = 1;
	pieSeries.hiddenState.properties.endAngle = -90;
	pieSeries.hiddenState.properties.startAngle = -90;

	}); // end am4core.ready()
	</script>
	

</body>
</html>
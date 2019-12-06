<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- CLUSTERED BAR CHART -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- Styles -->
	<style>
      #chartdiv {
		  width: 500px;
		  height: 800px;
		  left: 40px;
		  top:-50px;
		  position:absolute;
		}
		
		#chartdiv1 {
		  width: 500px;
		  height: 800px;
		  left: 600px;
		  top:-50px;
		  position:absolute;
		}
	</style>
</head>
<body>
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/kelly.js"></script>
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
	  series.columns.template.tooltipText = "환자 수: [bold]{valueX}[/]";
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
	
	
	<!-- Chart1 code -->
	am4core.ready(function() {
	
	// Themes begin
	
	am4core.useTheme(am4themes_animated);
	// Themes end
	
	// Create chart instance
	var chart = am4core.create("chartdiv1", am4charts.XYChart);
	
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
	  series.columns.template.tooltipText = "진료비용: [bold]{valueX}[/]";
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

	createSeries("costSum", "costSum");

	}); // end am4core.ready()
	</script>

<div id="chartdiv"></div>
<div id="chartdiv1"></div>
</body>
</html>
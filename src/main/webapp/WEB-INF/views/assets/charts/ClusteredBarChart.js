am4core.ready(function() {

	// Themes begin
	am4core.useTheme(am4themes_animated);
	// Themes end

	 // Create chart instance
	var chart = am4core.create("chartdiv3", am4charts.XYChart);

	// Add data
	chart.data = [{
		  "진료행위명(건수)": "코골이수술",
		  "여자": 562,
		  "남자": 3343
		},{
		  "진료행위명(건수)": "간암고주파수술",
		  "여자": 1025,
		  "남자": 3470
		},{
		  "진료행위명(건수)": "인공관절치환술(고관절)",
		  "여자": 15670,
		  "남자": 9643
		},{
		  "진료행위명(건수)": "인공관절치환술(슬관절)",
		  "여자": 57648,
		  "남자": 11697
		},{
		  "진료행위명(건수)": "갑상선수술",
		  "여자": 23413,
		  "남자": 7373
		}];

	// Create axes
	var categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
	categoryAxis.dataFields.category = "진료행위명(건수)";
	categoryAxis.numberFormatter.numberFormat = "#";
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
	  series.dataFields.categoryY = "진료행위명(건수)";
	  series.name = name;
	  series.columns.template.tooltipText = "{name}: [bold]{valueX}[/]";
	  series.columns.template.height = am4core.percent(100);
	  series.sequencedInterpolation = true;

	  var valueLabel = series.bullets.push(new am4charts.LabelBullet());
	  valueLabel.label.text = "{valueX}";
	  valueLabel.label.horizontalCenter = "left";
	  valueLabel.label.dx = 10;
	  valueLabel.label.hideOversized = false;
	  valueLabel.label.truncate = false;

	  var categoryLabel = series.bullets.push(new am4charts.LabelBullet());
	  categoryLabel.label.text = "{name}";
	  categoryLabel.label.horizontalCenter = "right";
	  categoryLabel.label.dx = -10;
	  categoryLabel.label.fill = am4core.color("#fff");
	  categoryLabel.label.hideOversized = false;
	  categoryLabel.label.truncate = false;
	}

	createSeries("여자", "여자");
	createSeries("남자", "남자");

	}); // end am4core.ready()
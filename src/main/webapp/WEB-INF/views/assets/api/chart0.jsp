<style>
#chartdiv {
	width: 100%;
	height: 650px;
	margin: auto;
}
</style>
<script>
	am4core.ready(function() {

		console.log('${jsonList}')

		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end

		// Create chart
		var chart = am4core.create("chartdiv", am4charts.PieChart);
		chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

		chart.data = ${jsonList}

		var series = chart.series.push(new am4charts.PieSeries());
		series.dataFields.value = "addrcount";
		series.dataFields.radiusValue = "addrcount";
		series.dataFields.category = "addr2";
		series.slices.template.cornerRadius = 5;
		series.colors.step = 1;

		series.hiddenState.properties.endAngle = -90;

		chart.legend = new am4charts.Legend();

	}); // end am4core.ready()
</script>
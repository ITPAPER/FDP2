<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">
	    .container {
			position: relative;
			text-align: center;
		}
	    
	    .title {
			position: absolute;
			top: 30px;
			left: 85px;
		}
		
		#chartdiv1 {
		  position: absolute;
		  top: 150px;
		  left: 85px;
		  width: 500px;
	 	  height: 500px;
		}
		
		#chartdiv2 {
		  position: absolute;
		  top: 150px;
		  left: 620px;
		  width: 500px;
	 	  height: 500px;
		}
		
		#chartdiv3 {
		  position: absolute;
		  top: 750px;
		  left: 85px;
		  width: 1100px;
		  height: 600px;
		  background-color:#454a58;
		}
		
		h4 {
			
			color: red;
		}
		
		.chart1 {
			diaplay: inline-block;
			position: absolute;
			top: 100px;
			left: 85px;
		}
		
		.chart2 {
			diaplay: inline-block;
			position: absolute;
			top: 100px;
			left: 620px;
		}
		
		.chart3 {
			diaplay: inline-block;
			position: absolute;
			top: 700px;
			left: 85px;
		}
    </style>
  </head>
  
  <body>
	<%@ include file="../inc/top.jsp" %>
	<!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
	<div class="container"style="height:1500px;">
		<h3 class="title"><strong>국민 관심 보건의료 통계</strong></h3>
		<!-- 차트 삽입 예시 -->
		<div>
			<h4 class="chart1">[Partitioned Bar Chart Example]</h4>
			<div id="chartdiv1"></div>
		</div>
		
		<div>
			<h4 class="chart2">[Dragging Pie Slices Example]</h4>
			<div id="chartdiv2"></div>
		</div>
		
		<div>
			<h4 class="chart3">[Map with Bubbles Example]</h4>
			<div id="chartdiv3"></div>
		</div>
	</div>
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	<script src="https://www.amcharts.com/lib/4/geodata/worldLow.js"></script>
	<script src="https://www.amcharts.com/lib/4/maps.js"></script>
	
	<!-- JavaScript Sources-->
	<script type="text/javascript" src="../assets/charts/partitionedBarChart.js"></script>
	<script type="text/javascript" src="../assets/charts/draggingPieSlices.js"></script>
	<script type="text/javascript" src="../assets/charts/mapWithBubbles.js"></script>
	
	
	
	
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
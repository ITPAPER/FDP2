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
		  width: 1000px;
	 	  height: 500px;
		}

		#chartdiv2 {
		  position: absolute;
		  top: 750px;
		  left: 85px;
		  width: 1000px;
		  height: 600px;
		}
		
		#chartdiv3 {
		  position: absolute;
		  top: 1450px;
		  left: 85px;
		  width: 1000px;
		  height: 600px;
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
			top: 700px;
			left: 85px;
		}
		
		.chart3 {
			diaplay: inline-block;
			position: absolute;
			top: 1400px;
			left: 85px;
		}
		
    </style>
  </head>

  <body>
	<%@ include file="../inc/top.jsp" %>
	<!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
	<div class="container"style="min-height:3000px;">
		<h3 class="title"><strong>국민 관심 보건의료 통계</strong></h3>
		<!-- 차트 삽입 예시 -->
		<div>
			<h4 class="chart1">[2018년 다빈도 질병(환자 수 &amp; 요양급여비용총액)]</h4>
			<div id="chartdiv1"></div>
		</div>
		
		<div>
			<h4 class="chart2">[2018년 국민관심 진료행위(검사/수술 등) 통계]</h4>
			<div id="chartdiv2"></div>
		</div>
		<div id="piechart1" class="asset"></div>
		<div id="piechart2" class="asset"></div>
		<div id="piechart3" class="asset"></div>
	
		<div>
			<h4 class="chart3">[2018년 국민관심 진료행위(검사/수술 등) 통계]</h4>
			<div id="chartdiv3"></div>
		</div>
		

	
		</div>
	
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	
	<!-- JavaScript Sources-->
	<script type="text/javascript" src="../assets/charts/ColumnAndLineMix.js"></script>
	<script type="text/javascript" src="../assets/charts/PieChartAsBullets.js"></script>
	<script type="text/javascript" src="../assets/charts/ClusteredBarChart.js"></script> 
	
<!-- Chart code -->
<script>

</script>
		

	
	
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
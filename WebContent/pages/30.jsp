<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">
	.container{
	width:1170px;
	margin:auto;
	}
	
	.title {
	 width:1170px;
	}
	
	.title1 {
	display:block;
	padding: 30px 0 0  70px;
	}
	
	
	.chart1name {
	display: block;
	padding : 0 0 0 70px;
	}
	
	.rect{
	margin:auto;
	}
    </style>
  	
  	<link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
  </head>

  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
	<div class="container"style="min-height:750px;">
	<div class="title">
		<h3 class="title1"><strong>국민 관심 보건의료 통계자료</strong></h3>
		<h4 class="chart1name">[Sample]</h4>
		</div>
		<div id="content">
		<!-- 탭 버튼 구성 -->
			<ul class="nav nav-tabs" id="mytab">
				<li><a href="#dept" data-toggle="tab" data-deptno="1" id="ct1">Chart1</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="2" id="ct2">Chart2</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="3" id="ct3">Chart3</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="4" id="ct4">Chart4</a></li>
			</ul>
		
			<!-- 탭 페이지 구성(단일페이지) -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade" id="dept">
					<div id="chartdiv"></div>
				</div>
			</div>
		</div>	
				<div style= "height:500px;">안녕하세요</div>
	</div>
	
	<%@ include file="../inc/bottom.jsp" %>
	
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="../plugins/ajax/ajax_helper.js"></script> 
	
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	
	<!-- Javascript -->
	<script type="text/javascript">
		$(function() {
			$("#ct1").click(function(e) {
				$.ajax({
					/** ajax 기본 옵션 */
					url: '../api/chart1.jsp',// 읽어들일 파일의 경로
					method: 'get',			 // 통신방법 (get(기본값), post)
					data: {},				 // 접속대상에게 전달할 파라미터
					dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	
					// 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
					success: function(req) {
						console.log(">> 성공!!!! >> " + req);
						// 준비된 요소에게 읽어온 내용을 출력한다.
						$("#dept").append(req);
					}
				});//end $.ajax
			}); // end #ct1 click
			
			$("#ct2").click(function(e) {
				$.ajax({
					/** ajax 기본 옵션 */
					url: '../api/chart2.jsp',// 읽어들일 파일의 경로
					method: 'get',			 // 통신방법 (get(기본값), post)
					data: {},				 // 접속대상에게 전달할 파라미터
					dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	
					// 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
					success: function(req) {
						console.log(">> 성공!!!! >> " + req);
						// 준비된 요소에게 읽어온 내용을 출력한다.
						$("#dept").append(req);
					}
				});
			}); // end #ct2 click
			
			$("#ct3").click(function(e) {
				$.ajax({
					/** ajax 기본 옵션 */
					url: '../api/chart3.jsp',// 읽어들일 파일의 경로
					method: 'get',			 // 통신방법 (get(기본값), post)
					data: {},				 // 접속대상에게 전달할 파라미터
					dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	
					// 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
					success: function(req) {
						console.log(">> 성공!!!! >> " + req);
						// 준비된 요소에게 읽어온 내용을 출력한다.
						$("#dept").append(req);
					},
					// 통신 실패시 호출될 함수 (파라미터는 에러내용)
					error: function(error) {
						// 404 -> Page Not Found
						// 50x -> Server Error(웹 프로그램 에러)
						// 200, 0 -> 내용의 형식 에러(JSON,XML)
						console.log(">> 에러!!!! >> " + error.status);
					}
				});
			}); // end #ct3 click
			
			$("#ct4").click(function(e) {
				$.ajax({
					/** ajax 기본 옵션 */
					url: '../api/chart4.jsp',// 읽어들일 파일의 경로
					method: 'get',			 // 통신방법 (get(기본값), post)
					data: {},				 // 접속대상에게 전달할 파라미터
					dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
					timeout: 30000,			 // 타임아웃 (30초)
	
					// 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
					success: function(req) {
						console.log(">> 성공!!!! >> " + req);
						// 준비된 요소에게 읽어온 내용을 출력한다.
						$("#dept").append(req);
					}
				});
			}); // end #ct4 click
		});
	</script>
  </body>
</html>
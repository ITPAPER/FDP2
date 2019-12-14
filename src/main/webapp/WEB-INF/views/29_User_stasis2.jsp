<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<jsp:include page="./assets/inc/head.jsp" />
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />

<!-- ajax-helper -->
<link rel="stylesheet" href="./assets/plugins/ajax/ajax_helper.css" />

<style type="text/css">

/* 전체 박스 */
/* 차트 */
.tab-content {
	padding: 100px 0;
	margin: auto;
}

/** 탭 */
.nav>li>a {
	width: 100px;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
	color: #757575;
}

</style>
</head>

<body>
	<jsp:include page="./assets/inc/top.jsp" />

	<div class="container" style="min-height: 750px;">

		<h1 class="page-header">회원 정보 통계</h1>
		<div>
		</div>
		<div>
			<!-- 탭 버튼 구성 -->
			<ul class="nav nav-tabs" id="mytab">
				<li><a id="gr1" data-toggle="tab" data-deptno="1">지역</a></li>
				<li><a id="gr2" data-toggle="tab" data-deptno="2">나이</a></li>
				<li><a id="gr3" data-toggle="tab" data-deptno="3">성별</a></li>
				<li><a id="gr4" data-toggle="tab" data-deptno="4">게시글</a></li>
				<li><a id="gr5" data-toggle="tab" data-deptno="5">접속시간</a></li>
			</ul>

			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade" id="dept"></div>
				<div id="chartdiv"></div>
			</div>
			<!-- 탭 박스 끝 -->
		</div>
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" />
	<script src="./assets/js/jquery.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<script src="./assets/plugins/ajax/ajax_helper.js"></script>
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	<script>
		// 세션 없을 때는 21로 
		$(function() {
			$(document).ready(function() {
				
				var sessionCheck = $('#check').attr('value');
				console.log(sessionCheck)
				
				if (sessionCheck == '') {
				location.href = "${pageContext.request.contextPath}/21_Management.do";
				alert("세션이 만료 되었습니다. 로그인 후 이용하세요.");
				}
			});
			
			$("#gr1").click(function(e) {
				$("#chartdiv").empty();
				$("#dept").empty();
				$.ajax({
					/** ajax 기본 옵션 */
					url : './assets/api/chart99.do',// 읽어들일 파일의 경로
					dataType : 'html', //읽어올 내용 형식(html, xml, json)
					// 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
					success : 
						function(req) {
						console.log(">> 성공!!! >> " + req);
						// 준비된 요소에게 읽어온 내용을 출력한다.
						$("#dept").html(req);
					}
				});		//end $.ajax
			});		// end #gr1 click
			
			$("#gr2").click(function(e) {
				$("#chartdiv").empty();
				$("#dept").empty();
			});	// end #gr2 click
			
			$("#gr3").click(function(e) {
				$("#chartdiv").empty();
				$("#dept").empty();
			});	// end #gr3 click
			
			$("#gr4").click(function(e) {
				$("#chartdiv").empty();
				$("#dept").empty();
			});	// end #gr4 click
			
			$("#gr5").click(function(e) {
				$("#chartdiv").empty();
				$("#dept").empty();
			});	// end #gr5 click
		})
	</script>

</body>
</html>
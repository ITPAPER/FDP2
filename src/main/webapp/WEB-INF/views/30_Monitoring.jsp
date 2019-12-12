<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
<%-- <%@ include file="../inc/head.jsp"%> --%>
<jsp:include page="./assets/inc/head.jsp" />
<link rel="stylesheet" type="text.css" href="./assets/plugins/ajax/ajax_helper.css">
	<!-- handlebar plugin -->
<script src="./assets/plugins/handlebars/handlebars-v4.3.1.js"></script>
<style type="text/css">
.ththth {
	font-size: 12px;
	vertical-align: middle !important;
	font-weight: normal;
	text-align: center;
	line-height: 1;
	background: #eeeeee;
}

.tdtdtd {
	font-size: 12px;
	vertical-align: middle !important;
	font-weight: normal;
	text-align: center;
	line-height: 1;
}

h5 {
	margin: 0px;
}
</style>

</head>
<body>
	<%-- <%@ include file="../inc/top.jsp"%> --%>
	<jsp:include page="./assets/inc/top.jsp" />
	<div class="container" style="min-height: 1000px;">
		<header>
			<h1 style="padding: 15px 15px 0 15px;">서울시 응급실 현황</h1>
			<h2 id="timer" style="padding: 9px 15px 15px 15px; color: red; margin: 10px 0 10px 0;"></h2>
		</header>
		<div class="table-responsive">
			<table class="table table-bordered table-hover"
				style="width: 1130px;" id="erer">
				
			</table>
		</div>
	</div>
	<!-- Ajax로 읽어온 내용을 출력하는데 사용될 HTML 템플릿 -->
	<script id="list-item-tmpl" type="text/x-hendlebars-template">
	
		<thead>
			<tr>
				<td colspan="10" class="text-left"
					style="line-height: 1; font-size: 22px; padding: 15px 0px; border-bottom: 0;">&nbsp;
					{{dutyName}}</td>
			</tr>
			<tr>
				<td colspan="10" class="text-left"
					style="line-height: 1; font-size: 13px; padding: 15px 0px; border-bottom: 0;">&nbsp;&nbsp;
										{{addr}}
								&nbsp;&nbsp;&nbsp;연락처: {{tel}}</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th class="text-center ththth">응급실</th>
				<th class="text-center ththth">내과 중환자실</th>
				<th class="text-center ththth">외과 중환자실</th>
				<th class="text-center ththth">외과입원실</th>
				<th class="text-center ththth">신경과입원실</th>
				<th class="text-center ththth">신경외과 중환자실</th>
				<th class="text-center ththth">인큐베이터 유무</th>
				<th class="text-center ththth">소아당직의 직통번호</th>
				<th class="text-center ththth">신경 중환자실</th>
				<th class="text-center ththth">신생아중환자실</th>
			</tr>
			<tr>
				<td class="tdtdtd">{{hvec}}</td>
				<td class="tdtdtd">{{hv2}}</td>
				<td class="tdtdtd">{{hv3}}</td>
				<td class="tdtdtd">{{hv4}}</td>
				<td class="tdtdtd">{{hv5}}</td>
				<td class="tdtdtd">{{hv6}}</td>
				<td class="tdtdtd">{{hv11}}</td>
				<td class="tdtdtd">{{hv12}}</td>
				<td class="tdtdtd">{{hvcc}}</td>
				<td class="tdtdtd">{{hvncc}}</td>
			</tr>
		</tbody>	
	</script>
	<jsp:include page="./assets/inc/bottom.jsp" />
	<script src="./assets/plugins/gmaps/gmaps.min.js"></script>
	<script src="./assets/plugins/ajax/ajax_helper.js"></script>
	<script type="text/javascript">
		$(function(){
		setInterval(
			$.ajax( {
				url:'getErInfo.do',
				method:'get',
				dataType:'json',
				success: function(er) {
					$("#erer").empty();
					for(var i=0; i<49; i++){
						console.log(er);
						var template = Handlebars.compile($("#list-item-tmpl").html());
						var html = template(er[i]);
					
						$("#erer").append(html);
				}
				}
		}), 60000);
		})
	</script>
	<script type="text/javascript">
	function printTime() {
		// 현재 시각을 구한다.
		var days = [ "일", "월", "화", "수", "목", "금", "토" ];
		var mydate = new Date();

		var yy = mydate.getFullYear();
		var mm = mydate.getMonth() + 1;
		var dd = mydate.getDate();
		var i = mydate.getDay();
		var day = days[i];
		var hh = mydate.getHours();
		var mi = mydate.getMinutes();
		var ss = mydate.getSeconds();

		// 완성된 현재 시각
		var result = yy + "-" + mm + "-" + dd + " " + day + "요일 " + hh + ":"
				+ mi + ":" + ss;

		// id속성값이 timer인 요소에게 결과를 출력한다.
		document.getElementById("timer").innerHTML = result;
	}

	function startTimer() {
		// printTime 함수를 1초에 한번씩 반복해서 자동 호출한다.
		setInterval(printTime, 100);
	}
	jQuery(startTimer);
</script>
</body>
</html>
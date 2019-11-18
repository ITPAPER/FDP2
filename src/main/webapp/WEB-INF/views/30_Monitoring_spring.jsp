<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hello JSP</title>
	
	<jsp:include page="./assets/inc/head.jsp" />

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
	</script>
</head>

<body onload="startTimer()">

<jsp:include page="./assets/inc/top.jsp" />

<div class="container" style="min-height: 500px;" >
	<header>
		<h1 style="padding: 15px;"> 서울시 응급실 현황</h1>
		<h2 id="timer" style="padding: 15px; color: red;"></h2>
	</header>

	<c:if test="hospital!=null"  >
	<c:forEach var="item" items="${aa}" varStatus="status">
		<h5> 응급실  		${hvec}</h5>
		<h5> 내과 중환자실	</h5>
		<h5> 외과 중환자실	</h5>
		<h5> 외과입원실		</h5>
		<h5> 신경과입원실	</h5>
		<h5> 신경외과 중환자실</h5>
		<h5> 인큐베이터 유무 	</h5>
		<h5> 소아당직의 직통번호 </h5>
		<h5> 신경 중환자실	  </h5>
		<h5> 신생아중환자실	  </h5>

	</c:forEach>
	</c:if>
	<br />

</div>
	<jsp:include page="./assets/inc/bottom.jsp" /> 
</body>
</html>
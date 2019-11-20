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
	<div>
	<c:choose>
	<c:when test="item!=null"  >
	<h1>널이아님</h1>
	<c:forEach var="i" items="${item}" varStatus="status">
                        <%-- 출력을 위해 준비한 학과이름과 위치 --%>
                        <c:set var="hv2" value="${i.hv2}" />
                        <c:set var="hv4" value="${i.hv4}" />
                        <h2>나오라고${hv2 }</h2>
                        <h2>나와${hv4 }</h2>
             </c:forEach>
	
	</c:when>
	<c:otherwise>
		<h1>왜널이지</h1>
		
	</c:otherwise>
	</c:choose>
	<br />
</div>
</div>
	<jsp:include page="./assets/inc/bottom.jsp" /> 
</body>
</html>
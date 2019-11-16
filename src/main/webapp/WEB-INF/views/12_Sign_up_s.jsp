<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!doctype html>
<html lang="ko">
<head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />    
</head>
  <body>
  <jsp:include page="./assets/inc/top.jsp" />
	<div class="container"style="height:700px;">
		<span><img id="welcome" alt="가입환영" src="../img/welcome.png"></span>
		<h1>가입을 환영합니다!!</h1>
		<button type="button" id="move" class="btn btn-lg" onclick="location.href='01_Main.jsp'"><strong>메인페이지로 이동</strong></button>
	 </div>
	 
	 <jsp:include page="./assets/inc/bottom.jsp" /> 
	
</body>
</html>
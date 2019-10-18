<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">
		.doctor {
			width: 300px;
			height: 500px;
			float:left;
			margin-top: 100px;
			margin-left: 170px;
			position: relative;
			border-radius: 30px;
			background-color:  #ffa500;
			font-size: 30px;
			opacity: 0.6;
		}
		
		.patient {
			width: 300px;
			height: 500px;
			float: right;
			margin-top: 100px;
			margin-right: 170px;
			position: relative;
			border-radius: 30px;
			background-color:  #ffa500;
			font-size: 30px;
			opacity: 0.6;
		}
		
		.innerbox {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%); 
			color: white;
			font: 20px;
		}
		
		.next2 { color: white;}
		.next2:hover {color: white;}
		button {
			background-color:#ffa500;
			color: white;
			width: 200px;
			positon: relative;
			margin-top: 50px;
		}
		.btn {color: white; font: 25px; !important; }
		.btn:hover {color: white; font-weight: bold;}
		.next {
			width: 1170px;
			height: 200px;
			position: absolute;
			top: 800px;
			marign: auto;
			text-align: center;
		}
		
		.doc, .pat, .doc:hover, .pat:hover {
			color: white;
		}
		
		
		
	</style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container"style="height:900px;">
		<div class="doctor"><div class="innerbox"><strong><a class="doc" href="#">의사</a></strong></div></div>
		
		<div class="patient"><div class="innerbox"><strong><a class="pat" href="#">일반인</a></strong></div></div>
	 	
	 	<div class="next">
	 		<button type="button" class="btn btn-lg" style="font-weight: bold; font-size: 23px;"/><a class="next2" href="09_Sign_up_a.jsp">next  ></a></button>
	 	</div>
	</div>
	
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
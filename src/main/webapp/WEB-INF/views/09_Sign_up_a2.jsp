<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />
     <link rel="stylesheet" href="./assets/css/09_Sign_up_a.css">
  </head>
  <body>
  <jsp:include page="./assets/inc/top.jsp" />
	<div class="container"style="width: 1170px; height:1300px;">
	 <p>${output.fdpmember_id }</p>
	 <p>${output.name }</p>
	 <p>${output.user_id }</p>
	 <p>${output.email }</p>
	 <p>${output.gender }</p>
	 <p>${output.tel }</p>
	 <p>${output.addr1 }</p>
	 <p>${output.addr2 }</p>
	 
	 
	</div>
</body>
</html>
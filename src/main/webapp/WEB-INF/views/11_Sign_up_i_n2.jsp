<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="ko"> 
 <head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />
     <style type="text/css">
     	.container {
    		position: relative;
    		text-align: center;
    	}
    	
    	.title {
    		position: absolute;
    		left: 25px;
    		top: 10px;
    	}
    	
    	 	
    	#box1 {
			position: absolute;
			top: 50px;
			left: 380px;
			width: 370px;
			height: 500px;  
			/* background-color: #E0E0E0; */
			border-radius: 10px;	
    	}
    
    	.b {
    		position: absolute;
    		top: 180px;
    		left: 300px;
    		line-height: 220%;
    	}
    	
   		li {
    		list-style: none;
    		font-size: 16px;
    	}
    	
    	#joinbutton {
    		position: absolute;
    		bottom: 100px;
    		left: 515px;
    	}
    	.complete{
    		display: inline-block;
    		position: absolute;
    		bottom: 200px;
    		left: 380px;
    	}
     </style>
 </head>
 <body>
 <jsp:include page="./assets/inc/top.jsp" />
	<div class="container"style="height:800px;">
	<form name="myform" id="myform" action="12_Sign_up_s.do">
		<div id="box1">
			<h3 class="title"><strong>입력하신 정보를 확인해 주세요.</strong></h3>	
		</div>
		 <div class="b">
			<input type='hidden' name='user_id' value='${userId}'>
			<input type='hidden' name='user_name' value='${userName}'>
			<input type='hidden' name='email' value='${email}'>
			<input type='hidden' name='tel' value='${tel}'>
			<input type='hidden' name='gender' value='${gender}'>
			<input type='hidden' name='birthdate' value='${birthdate}'>
		
		 <table class="table table-bordered table-hover">
		 	<tbody>
					<tr>
						<td class="text-center active" style="font-weight:bold;" width="130px;">아이디</td>
						<td class="text-left" width="400px;">${userId }</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">이름</td>
						<td class="text-left">${userName }</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">성별</td>
						<td class="text-left">${gender }</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">생년월일</td>
						<td class="text-left">${birthdate }</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">이메일</td>
						<td class="text-left">${email }</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">주소</td>
						<td class="text-left">${address1 }&nbsp;${address2 }&nbsp;${address3 }&nbsp;${address4 }</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">연락처</td>
						<td class="text-left">${tel }</td>
					</tr>
			</tbody>
		 </table>
	 	</div>
	 <h4 class='complete'>'가입완료' 버튼을 누르시면 가입이 완료됩니다!</h4>
	 <button type="submit" id="joinbutton" class="btn btn-warning btn-lg" >가입 완료</button>
	 </form>
	 
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" /> 
</body>
</html>
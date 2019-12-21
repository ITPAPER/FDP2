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
	<div class="container"style="height:950px;">
	<form name="myform" id="myform" action="12_Sign_up_s.do">
		<div id="box1">
			<h3 class="title"><strong>입력하신 정보를 확인해 주세요.</strong></h3>	
		</div>
		 <div class="b">
		
		 		 <table class="table table-bordered table-hover">
		 	<tbody>
					<tr>
						<td class="text-center active" style="font-weight:bold;" width="130px;">아이디</td>
						<td class="text-left" width="400px;">${output.user_id}</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">이름</td>
						<td class="text-left">${output.name}</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">성별</td>
						<td class="text-left">
							<c:choose>
								<c:when test="${output.gender == 1}">남자</c:when>
								<c:when test="${output.gender == 2}">여자</c:when>
								<c:otherwise>${output.gender}</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">생년월일</td>
						<td class="text-left">${output.birthdate}</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">이메일</td>
						<td class="text-left">${output.email}</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">주소</td>
						<td class="text-left">${output.addr1}&nbsp;
							<c:choose>
								<c:when test="${output.addr2 == '110001' }">강남구</c:when>
								<c:when test="${output.addr2 == '110002' }">강동구</c:when>
								<c:when test="${output.addr2 == '110003' }">강서구</c:when>
								<c:when test="${output.addr2 == '110004' }">관악구</c:when>
								<c:when test="${output.addr2 == '110005' }">구로구</c:when>
								<c:when test="${output.addr2 == '110006' }">도봉구</c:when>
								<c:when test="${output.addr2 == '110007' }">동대문구</c:when>
								<c:when test="${output.addr2 == '110008' }">동작구</c:when>
								<c:when test="${output.addr2 == '110009' }">마포구</c:when>
								<c:when test="${output.addr2 == '110010' }">서대믄구</c:when>
								<c:when test="${output.addr2 == '110011' }">성동구</c:when>
								<c:when test="${output.addr2 == '110012' }">성북구</c:when>
								<c:when test="${output.addr2 == '110013' }">영등포구</c:when>
								<c:when test="${output.addr2 == '110014' }">용산구</c:when>
								<c:when test="${output.addr2 == '110015' }">은평구</c:when>
								<c:when test="${output.addr2 == '110016' }">종로구</c:when>
								<c:when test="${output.addr2 == '110017' }">중구</c:when>
								<c:when test="${output.addr2 == '110018' }">송파구</c:when>
								<c:when test="${output.addr2 == '110019' }">중랑구</c:when>
								<c:when test="${output.addr2 == '110020' }">양천구</c:when>
								<c:when test="${output.addr2 == '110021' }">서초구</c:when>
								<c:when test="${output.addr2 == '110022' }">노원구</c:when>
								<c:when test="${output.addr2 == '110023' }">광진구</c:when>
								<c:when test="${output.addr2 == '110024' }">강북구</c:when>
								<c:when test="${output.addr2 == '110025' }">금천구</c:when>
								<c:otherwise>
									${output.addr2}
								</c:otherwise>
							</c:choose>
						
						&nbsp;${output.addr3}&nbsp;${output.addr4}</td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">연락처</td>
						<td class="text-left">${output.tel}</td>
					</tr>
			</tbody>
		 </table>
	 	</div>
	 <!-- <h4 class='complete'>'가입완료' 버튼을 누르시면 가입이 완료됩니다!</h4> -->
	 <button type="submit" id="joinbutton" class="btn btn-warning btn-lg" >가입 완료</button>
	 </form>
	 
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" /> 
</body>
</html>
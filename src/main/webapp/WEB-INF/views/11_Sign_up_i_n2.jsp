<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="study.jsp.model1.helper.WebHelper"%>
<%
	WebHelper webHelper = WebHelper.getInstance(request, response);

	String userId = webHelper.getString("user_id");
	String userPw = webHelper.getString("user_pw");
	String userPwRe = webHelper.getString("user_pw_re");
	String userName = webHelper.getString("user_name");
	String gender = webHelper.getString("gender");
	String birthdate = webHelper.getString("birthdate");
	String email = webHelper.getString("email");
	String address1 = webHelper.getString("address1");
	String address2 = webHelper.getString("address2");
	String address3 = webHelper.getString("address3");
	String address4 = webHelper.getString("address4");
	String tel = webHelper.getString("tel");
	
    if (userId == null || userPw == null || userPwRe == null || userName == null || email == null || tel == null
    		|| gender == null || birthdate == null) {
        //이전 페이지로 강제 이동 후 종료
        webHelper.redirect(null, "입력항목이 잘못되었습니다.");
        return;
    } 
%>

<!doctype html>
<html lang="ko"> 
  <head>
    <%@ include file="../inc/head.jsp" %>
    
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
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container"style="height:800px;">
	<form name="myform" id="myform" action="12_Sign_up_s.jsp">
		<div id="box1">
			<h3 class="title"><strong>입력하신 정보를 확인해 주세요.</strong></h3>	
		</div>
		 <div class="b">
			<input type='hidden' name='user_id' value='<%=userId%>'>
			<input type='hidden' name='user_name' value='<%=userName%>'>
			<input type='hidden' name='email' value='<%=email%>'>
			<input type='hidden' name='tel' value='<%=tel%>'>
			<input type='hidden' name='gender' value='<%=gender%>'>
			<input type='hidden' name='birthdate' value='<%=birthdate%>'>
		
		 <table class="table table-bordered table-hover">
		 	<tbody>
					<tr>
						<td class="text-center active" style="font-weight:bold;" width="130px;">아이디</td>
						<td class="text-left" width="400px;"><%=userId %></td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">이름</td>
						<td class="text-left"><%=userName %></td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">성별</td>
						<td class="text-left"><%=gender %></td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">생년월일</td>
						<td class="text-left"><%=birthdate %></td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">이메일</td>
						<td class="text-left"><%=email %></td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">주소</td>
						<td class="text-left"><%=address1 %>&nbsp;<%=address2 %>&nbsp;<%=address3 %>&nbsp;<%=address4 %></td>
					</tr>
					<tr>
						<td class="text-center active" style="font-weight:bold;">연락처</td>
						<td class="text-left"><%=tel %></td>
					</tr>
			</tbody>
		 </table>
	 	</div>
	 <h4 class='complete'>'가입완료' 버튼을 누르시면 가입이 완료됩니다!</h4>
	 <button type="submit" id="joinbutton" class="btn btn-warning btn-lg" >가입 완료</button>
	 </form>
	 
	</div>
	
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
	/* 	$(function() {
			$('#myform').submit(function() {
				alert("가입을 축하드립니다!!")	
			});
		}); */
	</script>
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
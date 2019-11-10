<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">
    	.lbox{
    		width:600px;
    	}
    	.lo-box{
    		height:430px;
    		width:600px;
    		margin-top:150px;
    		border-radius:10px;
    	 	background-color: #ffa500;
    	}
    	
    	.form-group{
    		width:600px;
    		text-align: center;
    	}
    	.form-group label{
    		font-size:25px;
    	}
    	#user_id, #user_pw{
    		width:400px !important;
    		height:50px;
    	}
    	
    	#li-btn{
    		
    		width:450px;
    		height:100px;
    		margin:auto;
    		background-color: #696969;
    		font-size:50px;
    	}
    	#check{margin-left:25px; font-size: 17px;}
    	input[type=checkbox]{ width:17px; height:17px;}
    	.find_id{ color:black; margin-left:90px; font-size: 17px;}
    	.sign_up{  color:black;  margin-left:130px; font-size: 17px;}
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<section>
		<div class="container lbox" style="height:718px;">
			<form role="form" class="form-inline lo-box">
			<fieldset >
				
				<div class="container blank" style="height:30px;"></div>
				
				<!-- 다음예제에서 반복됩니다. -->
				<div class="form-group">
					<label for="user_id">아이디</label>
					<br/>
					<input type="text" id="user_id" class="form-control" placeholder="아이디를 입력하세요."/>
				</div>
				<div class="container blank" style="height:30px;"></div>
				<div class="form-group">
					<label for="user_pw">비밀번호</label>
					<br/>
					<input type="password" id="user_pw" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
				
				<div class="container blank" style="height:30px;"></div>
				
				<button id="li-btn" type="submit" class="btn btn-primary btn-block">로그인</button>
				<br/>
				<label id="check"><input type="checkbox" value="?????">자동로그인</label>
				<a href="26_Profile_i.jsp" class="find_id">아이디/비밀번호 찾기</a>
				<a href="09_Sign_up_a.jsp" class="sign_up">회원 가입</a>
				<!-- 여기까지 입니다. -->
			</fieldset>
		</form>
		</div>
	</section>
	<%@ include file="../inc/bottom.jsp" %>
	<script src="../assets/js/regex.js"></script>
	<script type="text/javascript">
	$(function(){
		
		$("#li-btn").hover(
			function(e){
				$(this).css("background-color","#5E5E5E").css("color","#ffa500");
			},
			function(e){
				$(this).css("background-color","#5E5E5E").css("color","white");
			}	
		);
		$("#li-btn").mousedown(
				function(e){
					$(this).css("background-color","white").css("color","#ffa500");
				}		
		);
		$("#li-btn").mouseup(
				function(e){
					$(this).css("background-color","#5E5E5E").css("color","#ffa500");
				}		
		);
		$(".lo-box").submit(function(e){
			//기본동작 수행방식
			e.preventDefault();
			/*아이디 검사*/
			if (!regex.value('#user_id', '아이디를 입력하세요.')) {return false;}
			if (!regex.value('#user_pw', '비밀번호를를 입력하세요.')) {return false;}
		});
	});
	</script>
  </body>
</html>
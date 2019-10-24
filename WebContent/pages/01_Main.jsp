<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">
    	.login_box{
    		background-color: #E0E0E0;
    		padding : 5px;
    		height:150px;
    		
    		
    	}
    	.login_cover{
    		height: 70px;
    		background-color: #5E5E5E;
    		border-radius: 4px;
    		text-align:center;
    		margin:10px;
    		margin-top:30px;
    		vertical-align: middle;
    	}
    	.login_btn{
    		border-radius: 4px;
    		margin-top: 10px;
    		color:white;
    		font-size: 20px;
    		display:block;
    		padding: 20px;
    		text-decoration: none !important;
    	}
    	.find_id{
    		display:inline-block;
    		margin-left: 10px;
    		margin-top: 6px;
    		color:#5e5e5e;
    	}
    	.sign_up{
    		display:inline-block;
    		margin-left: 70px;
    		margin-top: 6px;
    		color:#5e5e5e;
    	}
    	.find_hos{
    		text-align: center;
    		width:277px;
    		margin:auto;
    		color:#5e5e5e;
    		background-color: #FFB494;
    		font-size:25px;
    		border-radius: 5px;
    	}
    	.sub-info{
    		display:block;
    		width: 288px;
    		height: 100px;
    		margin:auto;
    		background-color: #FED593;
    		border-radius: 15px;
    		text-align: center;
    	}
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<section>
		<div class="container blank" style="height:30px;"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 login_box">
					<div class="login_cover"><a class="login_btn" href="02_Login.jsp">Find Doctor  로그인</a></div>
					<a href="#" class="find_id">아이디/비밀번호 찾기</a>
					<a href="08_Sign_up_c.jsp" class="sign_up">회원 가입</a>
				</div>
				<div class="col-md-9" style="text-align:center; font-size:50px;">
					<a href="#">이곳은 배너가 들어갈 자리인데 뭘 넣누?</a>
				</div>
			</div>
			<div class="container blank" style="height:30px;"></div>
			<div class="row">
				<div class="col-md-6">
					<div class="find_hos">우리동네 병원찾기</div>
					<div style="height:350px; border:3px solid black"></div>
				</div>
				<div class="col-md-6">
					<div class="find_hos">우리동네 응급실찾기</div>
					<div style="height:350px; border:3px solid black"></div>
				</div>
			</div>
			<div class="container blank" style="height:30px;"></div>
			
			<div class="row">
				<div class="col-md-6">
					<div class="find_hos">국민 질병 간편 통계</div>
					<div style="height:350px; border:3px solid black"></div>
				</div>
				<div class="col-md-6">
					<div class="find_hos">서울 응급실 포화도</div>
					<div style="height:350px; border:3px solid black"></div>
				</div>
			</div>
			
			<div class="container blank" style="height:40px;"></div>
			
			
			<div class="row">
				<div class="col-md-4">
					<a href="#" class="sub-info">질병 관련</a>
				</div>
				<div class="col-md-4">
					<a href="#" class="sub-info">유용한 정보</a>
				</div>
				<div class="col-md-4">
					<a href="#" class="sub-info">알아 보기</a>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="../inc/bottom.jsp" %>
	<script type="text/javascript">
	$(function(){
		$(".login_btn").hover(
			function(e){
				$(this).css("background-color","#5E5E5E").css("color","#ffa500");
			},
			function(e){
				$(this).css("background-color","#5E5E5E").css("color","white");
			}	
		);
	});
	</script>
  </body>
</html>
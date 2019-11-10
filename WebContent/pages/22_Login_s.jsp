<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>

<style>
.bbox {
	width: 1170px;
	margin: auto;
	padding-top: 50px;
}

.top {
	text-align: center;
	margin: 20px 0;
}

.top span {
	display: block;
}

.content {
	margin: auto;
	width: 600px;
	height: 400px;
	margin-bottom: 50px;
	border-radius: 10px;
	text-align: center;
}

.content label {
	display: block;
	font-size: 20px;
}

#login-form {
	padding-top: 50px;
}

.content input {
	width: 75%;
	height: 50px;
	margin: auto;
	margin-bottom: 30px;
}

.content>.form-block>.btn {
	margin: auto;
	width: 80%;
}

#login-form #btn8 {
	width: 450px;
	height: 100px;
	margin: auto;
	background-color: #696969;
	font-size: 50px;
}
</style>

</head>
<body>
	<%@ include file="../inc/top.jsp"%>
	<div class="bbox">
		<div class="container" style="min-height: 700px;">
			<div class="top">
				<span> <img src="../img/user.png">
				</span> <span> 관리자 로그인 </span>
			</div>
			<div class="content" style="background: #ffa500;">
				<form id="login-form" class="form-block" method="post"
					action="21_Management.jsp">
					<label for="user_id">아이디</label> <input type="text" name="user_id"
						id="user_id" class="form-control" placeholder="ID를 입력하세요." /> <label
						for="user_pw">비밀번호</label> <input type="password" name="user_pw"
						id="user_pw" class="form-control" placeholder="비밀번호를 입력하세요." />
					<button type="submit" id="btn8"
						class="btn btn-primary btn-lg btn-block">로그인</button>
				</form>
			</div>

		</div>

	</div>
	<%@ include file="../inc/bottom.jsp"%>
	<script src="regex.js"></script>
	<script>
		$(function() {
			$("#btn8").click(function(e) {
				e.preventDefault();

				if (!regex.value('#user_id', '아이디를 입력하세요.')) {
					return false;
				}
				if (!regex.value('#user_pw', '비밀번호를 입력하세요.')) {
					return false;
				}

				$('form').submit();

			});
		});
	</script>
</body>
</html>
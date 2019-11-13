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

.content span {
	display: block;
	font-size: 20px;
	margin: 20px;
	padding-top: 20px;
}

.content label {
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
	margin-top: 75px;
	width: 80%;
}

#login-form #btn7 {
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
				</span> <span> <b>회원 정보 수정</b>
				</span>
			</div>
			<div class="content" style="background: #ffa500;">
				<span> <strong>개인정보 보호를 위해 한번 더 비밀번호를 입력해주세요.</strong>
				</span>
				<form id="login-form" class="form-block" method="post" action="27_Profile.jsp">
					<label for="user_pw">비밀번호</label> <input type="password"
						name="user_pw" id="user_pw" class="form-control"
						placeholder="비밀번호를 입력하세요." />
					<button type="submit" class="btn btn-primary btn-lg btn-block" id="btn7">로그인</button>
				</form>
			</div>

		</div>
	</div>
	<%@ include file="../inc/bottom.jsp"%>
	<script src="regex.js"></script>
	<script>
		$(function() {
			$("#btn7").click(function(e) {
				e.preventDefault();

				if (!regex.value('#user_pw', '비밀번호를 입력하세요.')) {
					return false;
				}

				$('form').submit();

			});
		});

	</script>
</body>
</html>
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
	width: 80%;
	height: 50px;
	margin: auto;
	margin-bottom: 30px;
}

.content>.form-block>.btn {
	margin: auto;
	width: 80%;
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
				<form id="login-form" class="form-block" method="post" action="아직">
					<label for="user_id">아이디</label> <input type="text" name="user_id"
						id="user_id" class="form-control" placeholder="ID를 입력하세요." /> <label
						for="user_pw">비밀번호</label> <input type="password" name="user_pw"
						id="user_pw" class="form-control" placeholder="비밀번호를 입력하세요." />
					<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
				</form>
			</div>

		</div>

	</div>
	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
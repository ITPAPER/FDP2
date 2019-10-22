<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>
<style>


/* 필수항목 표시를 위한 `*` */
.identify {
	font-size: 14px;
	color: #f00;
}

/* 에러 메시지에 대한 글자 색상 */
.error {
	color: red;
}

/* 에러가 발생한 <input>태그 */
input.error {
	background-color: #ffff00;
}

/* 에러메시지가 표시중인 <label>태그 */
label.error {
	font-size: 10px;
	display: inline-block;
	padding: 5px 10px;
	margin: 0;
}

.top {
	width: auto;
	height: 120px;
	text-align: center;
}

.top span {
	display: block;
	padding-top: 20px;
}

.form-horizontal {
	border: 3px solid #ffa500;
	
}

.box-up {
	width: auto;
	height: 60px;
}


</style>


</head>
<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 500px;">
		<div class="top">
			<span> <img src="../img/user.png">
			</span> <span> 회원 정보 수정 </span>
		</div>
		<div class="content">
			<!-- 가입폼 시작 -->
			<form class="form-horizontal" name="join_form" id="join_form">
				<div class="form-group">
					<div class="box-up">
					<label for='user_id' class="control-label col-md-3">아이디</label>
					<div class="col-md-3">
						<input type="text" name="user_id" id="user_id"
							class="form-control" />
					</div>
					<label for='user_name' class="control-label col-md-3">이름</label>
					<div class="col-md-3">
						<input type="text" name="user_name" id="user_name"
							class="form-control" />
					</div>
					</div>
				</div>
				<div class="form-group">
					<div class="box-up">
					<label for='user_pw' class="control-label col-md-3">비밀번호 <span
						class='identify'>*</span></label>
					<div class="col-md-3">
						<input type="password" name="user_pw" id="user_pw"
							class="form-control" />
					</div>
					<!-- 주소 수정 필요 -->
					<label for='user_name' class="control-label col-md-3">주소</label>
					<div class="col-md-3">
						<input type="text" name="user_name" id="user_name"
							class="form-control" />
					</div>
					</div>
				</div>
				<div class="form-group">
					<label for='user_pw' class="control-label col-md-3">비밀번호 확인 <span
						class='identify'>*</span></label>
					<div class="col-md-3">
						<input type="password" name="user_pw_re" id="user_pw_re"
							class="form-control" />
					</div>
					<label for='email' class="control-label col-md-3">이메일 <span
						class='identify'>*</span></label>
					<div class="col-md-3">
						<input type="email" name="email" id="email" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for='birthdate' class="control-label col-md-3">생년월일 <span
						class='identify'>*</span></label>
					<div class="col-md-9">
						<input type="date" name="birthdate" id="birthdate"
							class="form-control" />
					</div>
				</div>

			</form>
			
				<div class="form-group">
					<div class="text-center">
						<button type="submit">정보 수정</button>
					</div>
				</div>

		</div>
		
	</div>
	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="../assets/css/reset.css " />
	<link rel="stylesheet" href="../plugins/sweetalert/sweetalert2.min.css" />
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
			border: 3px solid #ffa500;
			min-height: 300px;
			margin: auto;
			width: 550px;
		}

		.form-row {
			padding-top: 15px;
			margin: auto;
		}

		.col-md-2 {
			display: block;
			position: releative;
		}

		.identify {
			font-size: 15px;
			color: #f00;
		}
	</style>


</head>
<body>
	<%@ include file="../inc/top.jsp"%>
	<div class="bbox">
		<div class="container" style="min-height: 700px;">
			<div class="top">
				<span> <img src="../img/user.png">
				</span> <span> 회원 정보 수정 </span>
			</div>
			<!-- 가입폼 시작 -->
			<form class="content" name="join_form" id="join_form">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for='user_id'>아이디</label> <input type="text"
						class="form-control" id="user_id" name="user_id"
						placeholder="nobin****" readonly />
					</div>
					<div class="form-group col-md-6">
						<label for='user_name'>이름</label> <input type="text"
						class="form-control" id="user_name" name="user_name"
						placeholder="박*협" readonly />
					</div>
				</div>
	
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for='user_pw'>비밀번호&nbsp;<span class='identify'>*</span></label>
						<input type="password" class="form-control" id="user_pw"
						name="user_pw" placeholder="비밀번호">
					</div>
					<div class="form-group col-md-6">
						<label for='user_pw'>비밀번호 확인&nbsp;<span class='identify'>*</span></label>
						<input type="password" class="form-control" id="user_pw_re"
						name="user_pw_re" placeholder="비밀번호 확인">
					</div>
				</div>
	
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for='tel'>연락처</label> <input type="tel" class="form-control"
						id="tel" name="tel" placeholder="연락처">
					</div>
					<div class="form-group col-md-6">
						<label for='email'>이메일</label> <input type="email"
						class="form-control" id="email" name="email" placeholder="이메일">
					</div>
				</div>
	
				<div class="form-group">
					<label for='birthdate' class="col-md-2">생년월일</label>
					<div class="col-md-10">
						<input type="date" name="birthdate" id="birthdate"
						class="form-control" value="1991-09-11" />
					</div>
				</div>
	
				<div class="form-group">
					<label for='gender1' class="col-md-2">성별</label>
					<div class="col-md-10">
						<label> <input type='radio' name='gender' id='gender1'
							value='M' checked>남자
						</label> <label> <input type='radio' name='gender' id='gender2'
							value='F'>여자
						</label>
					</div>
				</div>
				<div class="form-group">
					<div class="text-center">
						<button type="submit">수정하기</button>
					</div>
				</div>
	
			</form>
	
			<script src="../assets/js/jquery.min.js"></script>
			<script type="text/javascript">
				var mydate = new Date();
	
				$(function() {
					$("#join_form")
					.submit(
	
						function(e) {
							e.preventDefault();
	
							if ($('#user_pw').val().length < 4) {
								alert('비밀번호는 4글자 이상 입력하셔야 합니다.');
								$('#user_pw').val('');
								$('#user_pw').focus();
								return false;
							}
	
							if ($('#user_pw').val() !== $('#user_pw_re')
								.val()) {
	
								alert('비빌번호를 다시 확인 해 주세요.');
								$('#user_pw_re').val('');
								$('#user_pw_re').focus();
								return false;
							}
	
						var pattern1 = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;
						if ($('#tel').val() !== "") {
							if (!pattern1.test($('#tel').val())) {
								alert('연락처를 입력해주세요.');
								$('#tel').val('');
								$('#tel').focus();
								return false;
							}
						}
	
						var pattern2 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
						if ($('#email').val() !== "") {
							if (!pattern2.test($('#email').val())) {
								alert('이메일을 입력해 주세요.');
								$('#eamil').val('');
								$('#eamil').focus();
								return false;
							}
						}
	
						alert("수정 완료!!");
					});
				});
			</script>
		</div>
	</div>
	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
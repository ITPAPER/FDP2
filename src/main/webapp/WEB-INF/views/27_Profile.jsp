<%@page import="study.jsp.model1.helper.WebHelper"%>
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
	padding: 25px 0;
}

.top {
	text-align: center;
	margin: 20px 0;
}

.top span {
	display: block;
}

.content {
	width: 900px;
	border: 3px solid #ffa500;
	margin: auto;
}

.form-group {
	margin: 15px;
}

.form-group>div>select {
	display: inline-block;
	width: 15%;
}

.form-group>div>input {
	display: inline-block;
	width: 34%;
}

.identify {
	color: #f00;
}
input
</style>


</head>
<body>
	<%@ include file="../inc/top.jsp"%>
	<div class="bbox">
		<div class="container" style="min-height: 750px;">
			<div class="top">
				<span> <img src="../img/user.png">
				</span> <span> <b>회원 정보 수정</b> </span>
			</div>
			<!-- 가입폼 시작 -->
			<form class="content" name="join_form" id="join_form"
				action="01_Main.jsp">
				<div class="form-row">
					<div class="form-group">
						<label for='user_id'>아이디</label> <input type="text"
							class="form-control" id="user_id" name="user_id"
							placeholder="nobin****" readonly />
					</div>
					<div class="form-group">
						<label for='user_name'>이름</label> <input type="text"
							class="form-control" id="user_name" name="user_name"
							placeholder="박*협" readonly />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group">
						<label for='user_pw'>비밀번호&nbsp;<span class='identify'>*</span></label>
						<input type="password" class="form-control" id="user_pw"
							name="user_pw" placeholder="비밀번호">
					</div>
					<div class="form-group">
						<label for='user_pw'>비밀번호 확인&nbsp;<span class='identify'>*</span></label>
						<input type="password" class="form-control" id="user_pw_re"
							name="user_pw_re" placeholder="비밀번호 확인">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group">
						<label for='tel'>연락처</label> <input type="tel"
							class="form-control" id="tel" name="tel" placeholder="연락처">
					</div>
					<div class="form-group">
						<label for='email'>이메일</label> <input type="email"
							class="form-control" id="email" name="email" placeholder="이메일">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group">
						<label for='address'>주소</label>
						<div>
							<select name="address1" id="address1" class="form-control">
								<option value="">-----시/도-----</option>
								<option value="서울특별시">서울특별시</option>
							</select> <select name="address2" id="address2" class="form-control">
								<option value="">-----군/구-----</option>
								<option value="강서구">강서구</option>
								<option value="양천구">양천구</option>
								<option value="구로구">구로구</option>
								<option value="영등포구">영등포구</option>
								<option value="금천구">금천구</option>
								<option value="동작구">동작구</option>
								<option value="관악구">관악구</option>
								<option value="서초구">서초구</option>
								<option value="강남구">강남구</option>
								<option value="송파구">송파구</option>
								<option value="강동구">강동구</option>
								<option value="광진구">광진구</option>
								<option value="성동구">성동구</option>
								<option value="동대문구">동대문구</option>
								<option value="중랑구">중랑구</option>
								<option value="노원구">노원구</option>
								<option value="도봉구">도봉구</option>
								<option value="강북구">강북구</option>
								<option value="성북구">성북구</option>
								<option value="종로구">종로구</option>
								<option value="중구">중구</option>
								<option value="용산구">용산구</option>
								<option value="은평구">은평구</option>
								<option value="서대문구">서대문구</option>
								<option value="마포구">마포구</option>
							</select> <input type="text" name="address3" id="address3"
								placeholder="동/읍/면 입력" class="form-control"> <input
								type="text" name="address4" id="address4" placeholder="상세주소"
								class="form-control">
						</div>

					</div>
				</div>

				<div class="form-group">
					<label for='birthdate'>생년월일</label>
					<div>
						<input type="date" name="birthdate" id="birthdate"
							class="form-control" value="1991-09-11" />
					</div>

				</div>

				<div class="form-group">
					<label for='gender1'>성별</label>
					<div>
						<label> <input type='radio' name='gender' id='gender1'
							value='M' checked>남자
						</label> <label> <input type='radio' name='gender' id='gender2'
							value='F'>여자
						</label>
					</div>
				</div>

				<div class="form-group">
					<div class="text-center">
						<button type="submit" name="btn9" id="btn9">수정하기</button>
					</div>
				</div>

			</form>

		</div>
	</div>
	<%@ include file="../inc/bottom.jsp"%>

	<script src="../assets/js/jquery.min.js"></script>
	<script src="regex.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="../plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#btn9").click(
					function(e) {
						e.preventDefault();

						if (!regex.value('#user_pw', '비밀번호를 입력하세요.')) {
							return false;
						}
						if (!regex.min_length('#user_pw', 4,
								'비밀번호는 최소 4자 이상 입력 가능합니다.')) {
							return false;
						}
						if (!regex.max_length('#user_pw', 20,
								'비밀번호는 최대 20자 까지만 입력 가능합니다.')) {
							return false;
						}
						if (!regex.compare_to('#user_pw', '#user_pw_re',
								'비밀번호 확인이 잘못되었습니다.')) {
							return false;
						}

						if ($('#tel').val() !== "") {
							if (!regex.phone('#tel', '연락처가 잘못되었습니다.')) {
								return false;
							}
						}

						if ($('#email').val() !== "") {
							if (!regex.email('#email', '이메일이 잘못되었습니다.')) {
								return false;
							}
						}

						swal({
							title : '확인', // 제목
							text : "회원정보 수정을 완료하시겠습니까?", // 내용
							type : 'warning', // 종류
							confirmButtonText : 'Yes', // 확인버튼 표시 문구
							showCancelButton : true, // 취소버튼 표시 여부
							cancelButtonText : 'No', // 취소버튼 표시 문구
						}).then(function(result) { // 버튼이 눌러졌을 경우의 콜백 연결
							if (result.value) { // 확인 버튼이 눌러진 경우
								swal('완료', '회원정보 수정이 완료되었습니다.', 'success')
								$('.swal2-confirm').click(function() {
									$('form').submit();
								});
							} else if (result.dismiss === 'cancel') {
								swal('취소', '삭제가 취소되었습니다.', 'error');
								/* parent.location.replace('27_Profile.jsp'); */
							}
						})
					});
			});
	</script>
</body>
</html>
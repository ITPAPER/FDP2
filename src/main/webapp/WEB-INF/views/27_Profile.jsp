<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="ko">
<head>
<jsp:include page="./assets/inc/head.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/reset.css " />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.css" />
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
</style>
</head>
<body>
	<jsp:include page="./assets/inc/top.jsp" />
	<div class="bbox">
		<div class="container" style="min-height: 750px;">
			<div class="top">
				<span> <img
					src="${pageContext.request.contextPath}/assets/img/user.png">
				</span> <span> <b>회원 정보 수정</b>
				</span>
			</div>
			<!-- 가입폼 시작 -->
			<form class="content" name="join_form" id="join_form"
				action="01_Main.do">
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
								<option value="110000" >서울특별시</option>
							</select> 
							<select name="address2" id="address2" class="form-control">
								<option class="gu" value="">---- 구를 선택해 주세요 ----</option>
								<option class="gu" value="110001">강남구</option>
								<option class="gu" value="110002">강동구</option>
								<option class="gu" value="110003">강서구</option>
								<option class="gu" value="110004">관악구</option>
								<option class="gu" value="110005">구로구</option>
								<option class="gu" value="110006">도봉구</option>
								<option class="gu" value="110007">동대문구</option>
								<option class="gu" value="110008">동작구</option>
								<option class="gu" value="110009">마포구</option>
								<option class="gu" value="110010">서대문구</option>
								<option class="gu" value="110011">성동구</option>
								<option class="gu" value="110012">성북구</option>
								<option class="gu" value="110013">영등포구</option>
								<option class="gu" value="110014">용산구</option>
								<option class="gu" value="110015">은평구</option>
								<option class="gu" value="110016">종로구</option>
								<option class="gu" value="110017">중구</option>
								<option class="gu" value="110018">송파구</option>
								<option class="gu" value="110019">중랑구</option>
								<option class="gu" value="110020">양천구</option>
								<option class="gu" value="110021">서초구</option>
								<option class="gu" value="110022">노원구</option>
								<option class="gu" value="110023">광진구</option>
								<option class="gu" value="110024">강북구</option>
								<option class="gu" value="110025">금천구</option>
							</select> 
							<input type="text" name="address3" id="address3"
								placeholder="동/읍/면 입력" class="form-control" /> 
							<input type="text" name="address4" id="address4" placeholder="상세주소"
								class="form-control" />
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
	<jsp:include page="./assets/inc/bottom.jsp" />

	<script src="${pageContext.request.contextPath}/assets/js/regex.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
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
								/* parent.location.replace('27_Profile.do'); */
							}
						})
					});
		});
	</script>
</body>
</html>
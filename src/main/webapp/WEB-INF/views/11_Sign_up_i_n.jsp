<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!doctype html>
<html lang="ko">
<head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />
     <style type="text/css">
	     .container {
		position: relative;
		text-align: center;
		}
		
		.title {
			position: absolute;
			top: 30px;
			left: 85px;
		}
		
		.form-horizontal {
			position: absolute;
			top: 120px;
			left: 85px;
			width: 1000px;
			display: inline-block;
		}
		
		#dupcheck { !important;
			border: 1.5px solid orange;
			background-color: white;
			color: orange;
			border-radius: 5px;
			height: 30px;
		}
		
		#emailcerti { !important;
			border: 1.5px solid orange;
			background-color: white;
			color: orange;
			border-radius: 5px;
			height: 30px;
		}
		
		.col-md-10 {
			text-align: left;
			line-height: 50%;
		}
		
		label {
			font-weight: normal;
		}
		
		.identify {
			color: red;
		}
		
		.birthdate {
			width: 300px;
		}
		
		.form-group {
			text-align: center;
		}
		
		.text-center {
			position: absolute;
			top: 800px;
			left: 400px;
		}
		#addr1, #addr2, #addr3, #addr4, .col-md-10 > input {
		    display: inline;
		}
     </style>
</head>
<body>
<jsp:include page="./assets/inc/top.jsp" />
	<div class="container" style="height: 1000px;">
		<h3 class="title">
			<strong>회원가입 - 일반인</strong>
		</h3>
		
		<form class="form-horizontal" name="join_form" id="join_form" method = "post"  action="11_Sign_up_i_add.do" >
			<div class="form-group">
				<label for='user_id' class="col-md-2">아이디 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="text" name="user_id" id="user_id" class="form-control" />
					<br />
					<br />
					<button type="button" id="dupcheck" value="0">아이디 중복검사</button>
					<br />
				</div>
			</div>
			<br />
			<div class="form-group">
				<label for='user_pw' class="col-md-2">비밀번호 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="password" name="user_pw" id="user_pw" class="form-control" />
				</div>
			</div>
			<br />
			<div class="form-group">
				<label for='user_pw' class="col-md-2">비밀번호 확인 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="password" name="user_pw_re" id="user_pw_re" class="form-control" />
				</div>
			</div>
			<br />
			<div class="form-group">
				<label for='user_name' class="col-md-2">이름 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="text" name="name" id="name"	class="form-control" />
				</div>
			</div>
			<br />
			<div class="form-group">
				<label for='gender1' class="col-md-2">성별 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<label><input type='radio' name='gender' id='gender1' value='1'>남자</label> 
					&nbsp; 
					<label><input type='radio' name='gender' id='gender2' value='2'>여자</label>
				</div>
			</div>
			<br />
			<div class="form-group">
				<label for='birthdate' class="col-md-2">생년월일 <span	class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="date" id="birthdate" name="birthdate" class="form-control">
				</div>
			</div>
    		<br />
			<div class="form-group">
				<label for='email' class="col-md-2">이메일 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="email" name="email" id="email" class="form-control" />
					<br />
					<!-- <button id="emailcerti">이메일 인증</button> -->
				</div>
			</div>
			<br />
			<br />
			<div class="form-group">
            <label for='address' class="col-md-2">주소 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <select name="addr1" id="addr1" class="form-control" style="width: 150px;">
                	<option value="">-----시/도-----</option>
                	<option value="서울특별시">서울특별시</option>
                </select>
                <select name="addr2" id="addr2" class="form-control" style="width: 155px;">
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
                </select>
                <input type="text" name="addr3" id="addr3" placeholder="동/읍/면 입력" class="form-control" style="width: 255px;">
                <input type="text" name="addr4" id="addr4" placeholder="상세주소" class="form-control" style="width: 255px;">
				<br/>
				<br/>
				<p style="font-style:italic; font-size: 13px;">입력하신 주소는 '병원찾기' 및 '응급실찾기' 이용 시 기본 주소로 사용됩니다.</p>            
            </div>
        </div>
			
			<div class="form-group">
				<label for='tel' class="col-md-2">연락처 <span class='identify'>*</span></label>
				<div class="col-md-10">
					<input type="tel" name="tel" id="tel" class="form-control" />
				</div>
			</div>
			<br /> 
			<br />
			<div class="form-group">
				<div class="text-center">
					<button type="submit" id="joinbutton" class="btn btn-warning btn-lg">가입하기</button>
					&nbsp;
					<button type="reset" class="btn btn-warning btn-lg">다시작성</button>
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" /> 
	<script src="./assets/plugins/ajax/ajax_helper.js"></script>
	
	<script type="text/javascript">
	$(function() {
		$("#dupcheck").click(function() {
			var user_id_val = $("#user_id").val();
			
			if(!user_id_val) {
				alert("아이디를 입력하세요!!!");
				$("#user_id").focus();
				return false;
			} 
			
			$.post('idcheck.do', {user_id: user_id_val}, function(req) {
				//사용 가능한 아이디인 경우 --> req = {status: "OK"}
				//사용 불가능한 아이디인 경우 --> req = {status: "FAIL"}
				
				console.log(user_id_val);
				console.log(req);
				
				if (req == 'OK') {
					alert("사용 가능한 아이디 입니다.");
					$("#dupcheck").attr("value", 1);
					
				} else {
					alert("사용할 수 없는 아이디 입니다.");
					$("#dupcheck").attr("value", 0);
					$("#user_id").val("");
					$("#user_id").focus();
				}
			});
		});
	});
	
	$(function() {
		/** 가입폼의 submit 이벤트 */
		$("#join_form").submit(	function(e) {
			// 기본동작 수행 방식
			//e.preventDefault();
	
			var complete = $("#dupcheck").val();
			
			if (complete == 0) {
				alert("아이디 중복검사를 실행해주세요");
				return false;
			} 
			
			/** 아이디 검사 */
            if (!regex.value('#user_id', '아이디를 입력하세요.')) { return false; }
            if (!regex.eng_num('#user_id', '아이디는 영어와 숫자 조합만 입력 가능합니다.')) { return false; }
            if (!regex.min_length('#user_id', 4, '아이디는 최소 4자 이상 입력 가능합니다.')) { return false; }
            if (!regex.max_length('#user_id', 20, '아이디는 최대 20자 까지만 입력 가능합니다.')) { return false; }

            /** 비밀번호 검사 */
            if (!regex.value('#user_pw', '비밀번호를 입력하세요.')) { return false; }
            if (!regex.min_length('#user_pw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
            if (!regex.max_length('#user_pw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
            if (!regex.compare_to('#user_pw', '#user_pw_re', '비밀번호 확인이 잘못되었습니다.')) { return false; }
            
            /** 이름 검사 */
            if (!regex.value('#name', '이름을 입력하세요.')) { return false; }
            if (!regex.kor('#name', '이름은 한글만 입력 가능합니다.')) { return false; }
            if (!regex.min_length('#name', 2, '이름은 최소 2자 이상 입력 가능합니다.')) { return false; }
            if (!regex.max_length('#name', 20, '이름은 최대 20자 까지만 입력 가능합니다.')) { return false; }

            /* 성별 검사 */
            if (!regex.check('input[name=gender]', '성별을 선택하세요.')) {return false;}
            
            /* 생년월일 */
            if (!regex.value('#birthdate', '생년월일을 선택하세요.')) { return false; }
            
            /** 이메일 검사 */
            if (!regex.value('#email', '이메일을 입력하세요.')) { return false; }
            if (!regex.email('#email', '이메일 주소가 잘못되었습니다.')) { return false; }
            
            /* 주소 검사 */
            if (!regex.value('#addr1', '주소 - 시/도를 입력하세요.')) { return false; }
            if (!regex.value('#addr2', '주소 - 군/구를 입력하세요.')) { return false; }
            if (!regex.value('#addr3', '주소 - 동/읍/면을 입력하세요.')) { return false; }
            if (!regex.value('#addr4', '주소 - 상세주소를 입력하세요.')) { return false; }
            
            /** 연락처 검사 */
            if (!regex.value('#tel', '연락처를 입력하세요.')) { return false; }
            if (!regex.phone('#tel', '연락처가 잘못되었습니다.')) { return false; }
            
			// 처리 완료
			alert("회원정보 입력이 완료되었습니다.");
			});
	});
	</script>
<script src="./assets/js/regex.js"></script>
</body>
</html>
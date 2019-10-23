<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="../assets/css/reset.css " />
<link rel="stylesheet" href="../plugins/sweetalert/sweetalert2.min.css" />
<style>
.top {
	text-align: center;
	margin: 20px 0;	
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



</style>


</head>
<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 500px;">
		<div class="top">
			<span> <img src="../img/user.png">
			</span> <span> 회원 정보 수정 </span>
		</div>
        <!-- 가입폼 시작 -->
		<form class="content"  name="join_form" id="join_form">
        	<div class="form-row">
  				<div class="form-group col-md-6">
      				<label for='user_id'>아이디</label>
      				<input type="text" class="form-control" id="user_id" name="user_id" 
      				placeholder="nobin****">
    			</div>
    			<div class="form-group col-md-6">
      				<label for='user_name'>이름</label>
      				<input type="text" class="form-control" id="user_name" name="user_name"
      				placeholder="박*협">
    			</div>
  			</div>
  		
  			<div class="form-row">
  		 		<div class="form-group col-md-6">
      				<label for='user_pw'>비밀번호</label>
      				<input type="password" class="form-control" id="user_pw" name="user_pw"
      				placeholder="비밀번호">
    			</div>
    			<div class="form-group col-md-6">
      				<label for='tel'>연락처</label>
      				<input type="tel" class="form-control" id="tel" name="tel"
      				placeholder="연락처">
    			</div>
  			</div>
  			
  			<div class="form-row">
  		 		<div class="form-group col-md-6">
      				<label for='user_pw'>비밀번호 확인</label>
      				<input type="password" class="form-control" id="user_pw_re" name="user_pw_re"
      				placeholder="비밀번호 확인">
    			</div>
    			<div class="form-group col-md-6">
      				<label for='email'>이메일</label>
      				<input type="email" class="form-control" id="email" name="email"
      				placeholder="이메일">
    			</div>
  			</div>
  			
  			<div class="form-group">
            	<label for='birthdate' class="col-md-2">생년월일</label>
           		<div class="col-md-10">
               		<input type="date" name="birthdate" id="birthdate" class="form-control" />
            	</div>
        	</div>
        	
        	<div class="form-group">
            	<label for='gender1' class="col-md-2">성별</label>
            	<div class="col-md-10">
                	<label>
                    	<input type='radio' name='gender' id='gender1' value='M'>남자
                    </label>
                	<label>
                    	<input type='radio' name='gender' id='gender2' value='F'>여자
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
   		<!-- validate 플러그인 참조 -->
    	<script src="../plugins/validate/jquery.validate.min.js"></script>
    	<script src="../plugins/validate/additional-methods.min.js"></script>
    	<!-- sweetalert 플러그인 참조 -->
    	<script src="../plugins/sweetalert/sweetalert2.min.js"></script>
    	
    	<script>
    	$(function() {

            /** 플러그인의 기본 설정 옵션 추가 */
            $.validator.setDefaults({
                onkeyup:false,          // 키보드입력시 검사 안함
                onclick:false,          // <input>태그 클릭시 검사 안함
                onfocusout:false,       // 포커스가 빠져나올 때 검사 안함
                showErrors:function(errorMap, errorList){ // 에러 발생시 호출되는 함수 재정의
                    // 에러가 있을 때만..
                    if(this.numberOfInvalids()) {
                        // 0번째 에러 메시지에 대한 javascript 기본 alert 함수 사용
                        //alert(errorList[0].message);
                        // 0번째 에러 발생 항목에 포커스 지정
                        //$(errorList[0].element).focus();
                        
                        swal({
                            title: "에러", 
                            text: errorList[0].message, 
                            type: "error"
                        }).then(function(result) {
                            // 창이 닫히는 애니메이션의 시간이 있으므로,
                            // 0.1초의 딜레이 적용 후 포커스 이동
                            setTimeout(function() {
                                $(errorList[0].element).val('');
                                $(errorList[0].element).focus();
                            }, 100);
                        });
                    }
                }
            });
    
            /** 유효성 검사 추가 함수 */
            $.validator.addMethod("kor", function(value, element) {
                return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
            });

            $.validator.addMethod("phone", function(value, element) {
                return this.optional(element) ||
                    /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value) ||
                    /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
            });

            /** form태그에 부여한 id속성에 대한 유효성 검사 함수 호출 */
            $("#join_form").validate({
                /** 입력검사 규칙 */
                rules: {
                    // [아이디] 필수 + 알파벳,숫자 조합만 허용
                    user_id: { required: true, alphanumeric: true },
                    // [비밀번호] 필수 + 글자수 길이 제한
                    user_pw: { required: true, minlength: 4, maxlength: 20 },
                    // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
                    user_pw_re: { required: true, equalTo: "#user_pw" },
                    // [이름] 필수
                    user_name: { required: true, kor: true },
                    // [이메일] 필수 + 이메일 형식 일치 필요
                    email: { required: true, email: true },
                    // [연락처] 필수
                    tel: { required: true, phone: true },
                    // [생년월일] 필수 + 날짜 형식 일치 필요
                    birthdate: { required: true, date: true },
                    // [성별] 필수 입력,
                    gender: "required"
                },
                /** 규칙이 맞지 않을 경우의 메시지 */
                messages: {
                    user_id: {
                        required: "아이디를 입력하세요.",
                        alphanumeric: "아이디는 영어,숫자만 입력 가능합니다."
                    },
                    user_pw: {
                        required: "비밀번호를 입력하세요.",
                        minlength: "비밀번호는 4글자 이상 입력하셔야 합니다.",
                        maxlength: "비밀번호는 최대 20자까지 가능합니다."
                    },
                    user_pw_re: {
                        required: "비밀번호 확인값을 입력하세요.",
                        equalTo: "비밀번호 확인이 잘못되었습니다."
                    },
                    user_name: {
                        required: "이름을 입력하세요.",
                        kor: "이름은 한글만 입력 가능합니다."
                    },
                    email: {
                        required: "이메일을 입력하세요.",
                        email: "이메일 형식이 잘못되었습니다."
                    },
                    tel: {
                        required: "연락처를 입력하세요.",
                        phone: "연락처 형식이 잘못되었습니다."
                    },
                    birthdate: {
                        required: "생년월일을 입력하세요.",
                        date: "생년월일의 형식이 잘못되었습니다."
                    },
                    gender: "성별을 선택해 주세요."
                }
            }); // end validate()
        });
    </script>
		
	</div>
	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    
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
    	
    	.dupcheck {
    	 	!important;
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
    	#address1, #address2, #address3, #address4, .col-md-10 > input {
    		display: inline;
    	}
    	
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container"style="height:1000px;">
	  <h3 class="title"><strong>회원가입 - 의사</strong></h3>	
	
	  <form class="form-horizontal" name="join_form" id="join_form" method="post" action="10_Sign_up_i_d2.jsp " >
        <div class="form-group">
            <label for='user_id' class="col-md-2">아이디 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="text" name="user_id" id="user_id" class="form-control" />
                <br/>
                <br/>
                <button class="dupcheck">아이디 중복검사</button>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for='user_pw' class="col-md-2">비밀번호 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="password" name="user_pw" id="user_pw" class="form-control" />
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for='user_pw' class="col-md-2">비밀번호 확인 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="password" name="user_pw_re" id="user_pw_re" class="form-control" />
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for='user_name' class="col-md-2">이름 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="text" name="user_name" id="user_name" class="form-control" />
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for='gender1' class="col-md-2">성별 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <label><input type='radio' name='gender' id='gender1' value='M'>남자</label>
                &nbsp;
                <label><input type='radio' name='gender' id='gender2' value='F'>여자</label>
            </div>
        </div>
        <br/>
        <div class="form-group">
        	<label for='birthdate' class="col-md-2">생년월일 <span class='identify'>*</span></label>
        	<div class="col-md-10">
        		<input type="date" id="birthdate" name="birthdate" class="form-control">
        	</div>
        </div>
        <br/>
        <div class="form-group">
            <label for='email' class="col-md-2">이메일 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="email" name="email" id="email" class="form-control" />
                <br/>
                <br/>
                <button class="dupcheck">이메일 인증</button>
            </div>
        </div>
        <br/>
         <div class="form-group">
            <label for='address' class="col-md-2">주소 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <select name="address1" id="address1" class="form-control" style="width: 150px;">
                	<option value="">-----시/도-----</option>
                	<option value="서울특별시">서울특별시</option>
                </select>
                <select name="address2" id="address2" class="form-control" style="width: 155px;">
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
                <input type="text" name="address3" id="address3" placeholder="동/읍/면 입력" class="form-control" style="width: 255px;">
                <input type="text" name="address4" id="address4" placeholder="상세주소" class="form-control" style="width: 255px;">
				<br/>
				<br/>
				<p style="font-style:italic; font-size: 13px;">입력하신 주소는 '병원찾기' 및 '응급실찾기' 이용 시 기본 주소로 사용됩니다.</p>            
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for='tel' class="col-md-2">연락처 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="tel" name="tel" id="tel" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for='user_field' class="col-md-2">전공분야 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <select name="user_field" id="user_field" class="form-control">
                	<option value="">-----선택하세요-----</option>
                	<option value="가정의학과">가정의학과</option>
                	<option value="내과">내과</option>
                	<option value="마취통증학과">마취통증학과</option>
                	<option value="산부인과">산부인과</option>
                	<option value="신경과">신경과</option>
                	<option value="신경외과">신경외과</option>
                	<option value="심장내과">심장내과</option>
                	<option value="영상의학과">영상의학과</option>
                	<option value="응급의학과">응급의학과</option>
                	<option value="정형외과">정형외과</option>
                	<option value="재활의학과">재활의학과</option>
                	<option value="진단검사의학과">진단검사의학과</option>
                	<option value="피부비뇨기과">피부비뇨기과</option>
                	<option value="치과">치과</option>
                	<option value="안과">안과</option>
                </select>
            </div>
        </div>
		<br/>
        <div class="form-group">
            <div class="text-center">
                <button type="submit" id="joinbutton" class="btn btn-warning btn-lg">가입하기</button>
                &nbsp;
                <button type="reset" class="btn btn-warning btn-lg">다시작성</button>
            </div>
        </div>
    </form>
	</div>
	
		 <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- 정규표현식 검사 객체를 참조한다. -->
    <script src="regex.js"></script>
    <script type="text/javascript">
       
    	$(function() {
            /** 가입폼의 submit 이벤트 */
            $("#join_form").submit(function(e) {
                // 기본동작 수행 방식
                //e.preventDefault();

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
                if (!regex.value('#user_name', '이름을 입력하세요.')) { return false; }
                if (!regex.kor('#user_name', '이름은 한글만 입력 가능합니다.')) { return false; }
                if (!regex.min_length('#user_name', 2, '이름은 최소 2자 이상 입력 가능합니다.')) { return false; }
                if (!regex.max_length('#user_name', 20, '이름은 최대 20자 까지만 입력 가능합니다.')) { return false; }

                /* 전공분야 검사 */
                if (!regex.value('#user_field', '전공분야를 선택하세요.')) { return false; }
                
                /** 이메일 검사 */
                if (!regex.value('#email', '이메일을 입력하세요.')) { return false; }
                if (!regex.email('#email', '이메일 주소가 잘못되었습니다.')) { return false; }

                /** 연락처 검사 */
                if (!regex.value('#tel', '연락처를 입력하세요.')) { return false; }
                if (!regex.phone('#tel', '연락처가 잘못되었습니다.')) { return false; }

                /** 성별검사 */
                if (!regex.check('input[name=gender]', '성별을 선택하세요.')) { return false; }
                if (!regex.value('#birthdate', '생년월일을 선택하세요.')) { return false; }


                // 처리 완료
                alert("회원정보 입력이 완료되었습니다.");
            });
        });
    </script>
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
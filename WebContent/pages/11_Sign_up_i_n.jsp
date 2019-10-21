<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="study.jsp.model1.helper.WebHelper"%>
<%  // WebHelper 객체 생성
    WebHelper webHelper = WebHelper.getInstance(request, response);

    // POST 파라미터 수신. 값이 없을 경우 기본값 null로 설정
    String userId = webHelper.getString("user_id");
    String userPw = webHelper.getString("user_pw");
    String userPwRe= webHelper.getString("user_pw_re");
    String userName= webHelper.getString("user_name");
    String email = webHelper.getString("email");
    String tel = webHelper.getString("tel");
    String gender = webHelper.getString("gender");
    String birthdate = webHelper.getString("birthdate");
    

    // 하나라도 값이 null인 경우, 첫 페이지로 강제 이동 + 실행종료
    /* if (userId == null || userPw == null || userPwRe == null || userName == null || 
    email == null || tel == null || gender == null || birthdate == null) {
        // 이전 페이지로 강제 이동 후 종료
        webHelper.redirect(null, "입력항목이 잘못되었습니다.");
        return;
    } */
%>
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
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container"style="height:1000px;">
	  <h3 class="title"><strong>회원가입 - 일반인</strong></h3>	
	
	  <form class="form-horizontal" name="join_form" id="join_form" action="12_Sign_up_s.jsp">
        <div class="form-group">
            <label for='user_id' class="col-md-2">아이디 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="text" name="user_id" id="user_id" class="form-control" />
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
            <label for='email' class="col-md-2">이메일 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="email" name="email" id="email" class="form-control" />
                <br/>
                <button class="dupcheck">이메일 인증</button>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for='tel' class="col-md-2">연락처 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="tel" name="tel" id="tel" class="form-control" />
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
		<br/>
        <div class="form-group">
            <div class="text-center">
                <button type="submit" class="btn btn-warning btn-lg">가입하기</button>
                &nbsp;
                <button type="reset" class="btn btn-warning btn-lg">다시작성</button>
            </div>
        </div>
    </form>
	 
	</div>
	
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
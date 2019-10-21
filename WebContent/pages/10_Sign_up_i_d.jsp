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
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container"style="height:1000px;">
	  <h3 class="title"><strong>회원가입 - 의사</strong></h3>	
	
	  <form class="form-horizontal" name="join_form" id="join_form">
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
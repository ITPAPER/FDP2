<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
	<!-- ajax-helper -->
    <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
    <script src="../plugins/ajax/ajax_helper.js"></script>
    
    <style type="text/css">
    
    .contanier {
    	
    }
    .down {
    	margin: auto;
    	background: #ccc;
    	width: 70%;
    	min-height: 300px;
    	position: relative;
    	margin-bottom: 20px;
    }
    
    .graph1 {
    	width: 40%;
    	height: 200px;
    	background: #fff;
    	margin-left: 30px;
    	margin-top: 20px;
    }
    .graph1 img {
    	width: 100%;
    	height: 200px;
    }
    
    .graph2 {
    	width: 40%;
    	height: 200px;
    	background: #fff;
    	margin-right: 30px;
    	margin-top: 20px;    	
    }
    
     .graph2 img {
    	width: 100%;
    	height: 200px;
    }
    
    .down span {
    	display: block;
    	text-align: center;
    	position: relative;
    	top: 15%;
    	
    }
    
    .nav > li > a {
    	width: 100px;
    	text-align: center;
    }
    
    .table > thead > th {
    	width: 100px;
    }
    </style>
  </head>
  
  <body>
	<%@ include file="../inc/top.jsp" %>
	<div class="container" style="min-height:500px;">
	
	<div class="container">
	<h1 class="page-header">
		누적 접속 회원 통계
	</h1>
		<div>
			<!-- 탭 버튼 구성 -->
			<ul class="nav nav-tabs" id="mytab">
				<li><a href="#dept" data-toggle="tab" data-deptno="1">지역</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="2">나이</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="3">성별</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="4">이메일</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="5">게시글</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="6">댓글</a></li>
				<li><a href="#dept" data-toggle="tab" data-deptno="7">인증 대기</a></li>
			</ul>
			
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade" id="dept">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr style="background: #ffa500;">
									<th class="text-center">회원 아이디</th>
									<th class="text-center">지역</th>
									<th class="text-center">나이</th>
									<th class="text-center">성별</th>
									<th class="text-center">회원 등급</th>
									<th class="text-center">의사 인증</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">jihyeon0429</td>
									<td class="text-center">당산</td>
									<td class="text-center">30</td>
									<td class="text-center">여</td>
									<td class="text-center">의사</td>
									<td class="text-center">Y</td>
								</tr>
								<tr>
									<td class="text-center">lss0238</td>
									<td class="text-center">분당</td>
									<td class="text-center">28</td>
									<td class="text-center">남</td>
									<td class="text-center">일반인</td>
									<td class="text-center">N</td>
								</tr>
								<tr>
									<td class="text-center">mingi115</td>
									<td class="text-center">사당</td>
									<td class="text-center">28</td>
									<td class="text-center">남</td>
									<td class="text-center">일반인</td>
									<td class="text-center">N</td>
								</tr>
								<tr>
									<td class="text-center">kcherry6123</td>
									<td class="text-center">강남</td>
									<td class="text-center">26</td>
									<td class="text-center">여</td>
									<td class="text-center">일반인</td>
									<td class="text-center">Waiting</td>
								</tr>
								<tr>
									<td class="text-center">kihyub</td>
									<td class="text-center">마포</td>
									<td class="text-center">29</td>
									<td class="text-center">남</td>
									<td class="text-center">일반인</td>
									<td class="text-center">N</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>	<!-- 탭 박스 끝 -->
			
			<div class="down clearfix">
			
				<div class="graph1 pull-left">
					<img src="../img/gr1.jpg">
					<span>그래프1</span>
				</div>
				<div class="graph2 pull-right">
					<img src="../img/gr2.jpg">
					<span>그래프2</span>
				</div>
				
			</div>
		</div>
	</div>
	 
	</div>
	
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
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
    
    .bbox {
    	width: 1170px;
    	margin: auto;
    }
    
     td {
    	vertical-align : middle !important;
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
    	margin-right: 30px;
    	margin-top: 20px;    	
    }
    
     .graph2 img {
    	width: 100%;
    	height: 200px;
    }
    
    .down div {
    	display: block;
    	text-align: center;
    	position: relative;
    	top: 15%;	
    }
    
    .nav > li > a {
    	width: 100px;
    	text-align: center;
    }
    
    /* -------- */
    tr td div {
    	display: inline-block;
    }
    
    .bo1 {
    	width: 50%;
    }
    
    .bo2 {
    	width: 50%;
    	position: relative;
    	top: 12px;
    	left: 10px;
    }

    </style>
  </head>
  
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="bbox">
		<div class="container" style="min-height:750px;">
	
		<h1 class="page-header">
			누적 접속 회원 통계
		</h1>
			<div>
				<!-- 탭 버튼 구성 -->
				<ul class="nav nav-tabs" id="mytab">
					<li><a href="#dept1" data-toggle="tab" data-deptno="1">지역</a></li>
					<li><a href="#dept2" data-toggle="tab" data-deptno="2">나이</a></li>
					<li><a href="#dept3" data-toggle="tab" data-deptno="3">성별</a></li>
					<li><a href="#dept4" data-toggle="tab" data-deptno="4">게시글</a></li>
					<li><a href="#dept5" data-toggle="tab" data-deptno="5">접속 시간</a></li>
					<li><a href="#dept6" data-toggle="tab" data-deptno="6">인증 대기</a></li>
				</ul>
				
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade" id="dept1">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover clearfix">
								<thead>
									<tr style="background: #ffa500; border-top: 2px solid #ccc;">
										<th class="text-center">회원 아이디</th>
										<th class="text-center">지역</th>
									</tr>
								</thead>
								<tbody>
								
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">당산</td>
									</tr>
									
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">분당</td>
									</tr>
									
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">사당</td>									
									</tr>
									
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>		
										</td>
										<td class="text-center">강남</td>
										
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
										<td class="text-center">마포</td>
										
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="dept2">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr style="background: #ffa500; border-top: 2px solid #ccc;">
										<th class="text-center">회원 아이디</th>
										<th class="text-center">나이</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">30</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">28</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">28</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>		
										</td>
										<td class="text-center">26</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
										<td class="text-center">29</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="dept3">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr style="background: #ffa500; border-top: 2px solid #ccc;">
										<th class="text-center">회원 아이디</th>
										<th class="text-center">성별</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">여</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">남</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">남</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>		
										</td>
										<td class="text-center">여</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
										<td class="text-center">남</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="dept4">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr style="background: #ffa500; border-top: 2px solid #ccc;">
										<th class="text-center">회원 아이디</th>
										<th class="text-center">게시글 수</th>
										<th class="text-center">댓글 수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">1</td>
										<td class="text-center">10</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">2</td>
										<td class="text-center">9</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">3</td>
										<td class="text-center">8</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>		
										</td>
										<td class="text-center">4</td>
										<td class="text-center">7</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
										<td class="text-center">5</td>
										<td class="text-center">6</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="dept5">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr style="background: #ffa500; border-top: 2px solid #ccc;">
										<th class="text-center">회원 아이디</th>
										<th class="text-center">접속시간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">2019-10-29 12:34:56</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">2019-10-29 12:34:56</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">2019-10-29 12:34:56</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>		
										</td>
										<td class="text-center">2019-10-29 12:34:56</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
										<td class="text-center">2019-10-29 12:34:56</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="dept6">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr style="background: #ffa500; border-top: 2px solid #ccc;">
										<th class="text-center">회원 아이디</th>
										<th class="text-center">회원 등급</th>
										<th class="text-center">의사 인증</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">의사</td>
										<td class="text-center">Y</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">일반인</td>
										<td class="text-center">N</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">일반인</td>
										<td class="text-center">N</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>		
										</td>
										<td class="text-center">일반인</td>
										<td class="text-center">Waiting</td>
									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="../img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
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
						<div>그래프1</div>
					</div>
					<div class="graph2 pull-right">
						<img src="../img/gr2.jpg">
						<div>그래프2</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
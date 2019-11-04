<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="study.jsp.model1.model.Board"%>
<%@page import="study.jsp.model1.service.impl.BoardServiceImpl"%>
<%@page import="study.jsp.model1.service.BoardService"%>
<%@page import="study.jsp.model1.mybatis.MybatisConnectionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%
	/* ---------- 주석 처리
	
	// 1) 필요한 객체 선언 및 할당
	//파라미터를 수신하고 페이지 이동을 수행하기 위한 WebHelper
	WebHelper webHelper = WebHelper.getInstance(request, response);
	
	// DB접속을 위한 SqlSession
	SqlSession sqlSession = MybatisConnectionFactory.getSqlSession();
	
	// SQL처리를 요청하기 위한 Service
	BoardService boardService = new BoardServiceImpl(sqlSession);
	 
	// 2) 필요한 변수값 생성
	
	// 3) 데이터 조회하기
	//조회결과가 저장될 객체 준비
	List<Board> output = null;
	
	// Service 객체를 통해 목록 조회기능을 호출한다.
	try {
		output = boardService.getBoardList(null);
	} catch (Exception e) {
		// 에러가 발생했으므로 DB접속 해제 --> 에러 메세지 출력 --> 실행 중단.
		sqlSession.close();
		out.println(e.getLocalizedMessage());
		return;
	}
	
	// 4) DB접속 해제
	sqlSession.close(); 
	
	---------- 주석 처리 끝 */
%>
<!doctype html>
<html lang="ko">
<head>
<link rel="stylesheet" href="../plugins/animate/animate.css" />
<%@ include file="../inc/head.jsp"%>
<style>

/* 전체 박스 */
.bbox {
	width: 1170px;
	margin: auto;
	min-height: 1000px;
}

/* 상단 박스 */
.mybox {
	width: auto;
	height: 200px;
	visibility: hidden;
}

/* 중앙 박스 조절 */
.box1 {
	width: 400px;
	height: 300px;
	font-weight: bold;
	font-size: 20px;
	color: white;
	background-color: #fff;
	text-align: center;
	line-height: 200px;
	position: absolute;
	top: 750px;
	left: 50%;
	margin-top: -100px;
	border-radius: 7px;
	visibility: hidden;
}

.box-left {
	margin-left: -450px;
}

.box-right {
	margin-left: 50px;
}
/* --box css 끝--*/

/* 박스 별 상단 바 */
.top {
	height: 50px;
	background: #757575;
	border-radius: 7px 7px 0 0;
}

.top .btn {
	position: absolute;
	top: 7px;
	right: 7px;
}

.top h4 {
	position: absolute;
	top: 5px;
	left: 15px;
}

/* 중앙 박스 안 조절 */
.loog {
	margin: auto;
	width: 350px;
	height: 70px;
	font-weight: bold;
	font-size: 20px;
	background-color: #757575;
}

thead {
	border: 1px solid #ffa500;
}

thead tr th {
	font-size: 18px;
	border: 0px !important;
	background: #ffa500 !important;
}

tbody {
	border: 1px solid #ffa500;
}

tbody tr {
	color: #757575;
}

tbody tr td {
	font-size: 16px;
	height: 42px;
	cursor: pointer;
}

/* Modal */
.modal-body>.graph {
	background: #ccc;
	min-height: 400px;
}

.modal-body .graph span {
	dislplay: block;
}

.modal-body .graph {
	text-align: center;
}

.modal-body .graph img {
	width: 70%;
}
</style>
</head>
<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="bbox">
		<div id="box2" class="header mybox">
			<h1>관리자 페이지</h1>
			<h4>회원관리 및 사이트 정보수정이 가능합니다.</h4>
			<hr />
		</div>
		<div class="page" id="page">
			<div class="box1 box-left"
				style="position: absolute; top: 375px; background: #ffa500;">
				<div class="top">
					<h4>Find Doctor를 더 안전하고 편리하게 관리하세요.</h4>
				</div>
				<button type="button" class="btn loog"
					onclick="location.href ='22_Login_s.jsp'">Find Doctor 관리자
					로그인</button>
			</div>
			<div class="box1 box-right" style="position: absolute; top: 375px;">
				<div class="top">
					<h4 class="pull-left">게시판 관리</h4>
					<button type="button" class="btn btn-primary pull-right"
						onclick="location.href ='13_Notice_board.jsp'">더보기</button>
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">글 번호</th>
							<th class="text-center">제목</th>
							<th class="text-center">작성자</th>
						</tr>
					</thead>
					<tbody>
						<%-- 일단은 주석 처리

						<% if (output == null || output.size() == 0) { %>
						<tr>
							<td class="text-center">게시물이 없습니다.</td>
						</tr>
						<%
							} else {
								for (int i = 0; i < 5; i++) {
									Board board =output.get(i);
						%>
						<tr>
							<td class="text-center"><%=board.getTitno()%></td>
							<td class="text-center"><%=board.getTitle()%></td>
							<td class="text-center"><%=board.getBname()%></td>
						</tr>
						<%
								}	// end for
							} 		// end if
						%>
			            
			             주석 처리 끝--%>
						<tr>
							<td class="text-center">1</td>
							<td class="text-center">목이 아파요</td>
							<td class="text-center">김체리</td>
						</tr>
						<tr>
							<td class="text-center">2</td>
							<td class="text-center">열과 두통</td>
							<td class="text-center">이승석</td>
						</tr>
						<tr>
							<td class="text-center">3</td>
							<td class="text-center">피부 알레르기</td>
							<td class="text-center">정민기</td>
						</tr>
						<tr>
							<td class="text-center">4</td>
							<td class="text-center">환절기 질병</td>
							<td class="text-center">조지현</td>
						</tr>
						<tr>
							<td class="text-center">5</td>
							<td class="text-center">유행성 독감</td>
							<td class="text-center">박기협</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box1 box-left">
				<div class="top">
					<h4 class="pull-left">누적 접속회원 통계(modal)</h4>
				</div>

				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">제목</th>
							<th class="text-center">통계</th>
						</tr>
					</thead>
					<tbody>
						<%-- 일단은 주석 처리

						<% if (output == null || output.size() == 0) { %>
						<tr>
							<td class="text-center">게시물이 없습니다.</td>
						</tr>
						<%
							} else {
								for (int i = 0; i < 5; i++) {
									? ? =output.get(i);
						%>
						<tr data-toggle="modal" data-target="#myModal">
							<td class="text-center"><%=?.get???() %></td>
							<td class="text-center"><%=?.get???() %></td>
						</tr>
						<%
								}	// end for
							} 		// end if
						%>
			            
			      	  주석 처리 끝--%>
						<tr data-toggle="modal" data-target="#myModal">
							<td class="text-center">1</td>
							<td class="text-center">지역</td>
						</tr>
						<tr data-toggle="modal" data-target="#myModal">
							<td class="text-center">2</td>
							<td class="text-center">나이</td>
						</tr>
						<tr data-toggle="modal" data-target="#myModal">
							<td class="text-center">3</td>
							<td class="text-center">남여</td>
						</tr>
						<tr data-toggle="modal" data-target="#myModal">
							<td class="text-center">4</td>
							<td class="text-center">시간</td>
						</tr>
						<tr data-toggle="modal" data-target="#myModal">
							<td class="text-center">5</td>
							<td class="text-center">등급</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box1 box-right">
				<div class="top">
					<h4 class="pull-left">회원 관리</h4>
					<button type="button" class="btn btn-primary pull-right"
						onclick="location.href ='28_User_stasis.jsp'">더보기</button>
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">회원 번호</th>
							<th class="text-center">아이디</th>
							<th class="text-center">등급</th>
						</tr>
					</thead>
					<tbody>
						<%-- 일단은 주석 처리

						<% if (output == null || output.size() == 0) { %>
						<tr>
							<td class="text-center">게시물이 없습니다.</td>
						</tr>
						<%
							} else {
								for (int i = 0; i < 5; i++) {
									? ? =output.get(i);
						%>
						<tr>
							<td class="text-center"><%=?.get???()%></td>
							<td class="text-center"><%=?.get???()%></td>
							<td class="text-center"><%=?.get???()%></td>
						</tr>
						<%
								}	// end for
							} 		// end if
						%>
			            
			        	주석 처리 끝--%>
						<tr>
							<td class="text-center">159</td>
							<td class="text-center">jihyeon0429</td>
							<td class="text-center">의사</td>
						</tr>
						<tr>
							<td class="text-center">258</td>
							<td class="text-center">lss0238</td>
							<td class="text-center">일반인</td>
						</tr>
						<tr>
							<td class="text-center">357</td>
							<td class="text-center">mingi115</td>
							<td class="text-center">일반인</td>
						</tr>
						<tr>
							<td class="text-center">478</td>
							<td class="text-center">kcherry6123</td>
							<td class="text-center">일반인</td>
						</tr>
						<tr>
							<td class="text-center">563</td>
							<td class="text-center">kihyub</td>
							<td class="text-center">일반인</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<!-- .modal -->
		<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- .modal-dialog -->
			<div class="modal-dialog">
				<!-- .modal-content -->
				<div class="modal-content">
					<!-- 제목 -->
					<div class="modal-header">
						<!-- 닫기버튼 -->
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Modal 써보기</h4>
					</div>
					<!-- 내용 -->
					<div class="modal-body">
						<div class="graph-body">
							<div class="graph">
								<span><img src="../img/chart.png"></span> <span>그래프1</span>
							</div>
						</div>
					</div>
					<!-- 하단 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							Close</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>
	<%@ include file="../inc/bottom.jsp"%>

	<script src="../plugins/animate/jquery.animatecss.min.js"></script>
	<script type="text/javascript">
		$(function() {

			$("#box2").animateCSS('bounceInDown', {
				delay : 200,
				duration : 1500,
				infinite : false
			});

			/** 페이지 열린 직후의 처리*/
			var box = $(".page").find(".box1"); // 0번째 `.page`요소에 있는 .box 얻기

			box.eq(0).animateCSS('fadeInLeft', {
				duration : 1500
			});

			box.eq(1).animateCSS('fadeInRight', {
				duration : 1500
			});

			box.eq(2).animateCSS('fadeInLeft', {
				duration : 1500
			});

			box.eq(3).animateCSS('fadeInRight', {
				duration : 1500
			});
		});
	</script>



</body>
</html>
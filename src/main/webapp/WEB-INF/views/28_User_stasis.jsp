<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="ko">
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate/animate.css" />
<jsp:include page="./assets/inc/head.jsp" />


<style>
	.bbox {
		width: 1300px;
		min-height: 750px;
		margin: auto;
		position: relative;
	}

	nav {
		height: 500px;
		width: 20%;
		margin: 0 20px;
		border: 1px solid #f7f7f7;
	}
	
	#memberView {
		height: 750px;
		width: 30%;
		position: absolute;
		box-shadow: -20px 20px 30px -15px gray;
		background: #fff;
		right: 0;
		top: 0;
		visibility: hidden;
	}	
	
	.center {
		display: inline-block;
		height: 500px;
		width: 75%;
		margin: auto;
		margin: 0 20px 0 0;
		border: 1px solid #f7f7f7;
	}
	
	.center-body {
		height: 600px;
		background: #fff;
	}
	
	.center-bottom {
		height: 100px;
	}
	
	.pagination {
		padding-top: 10px;
		padding-left: 360px;
	}
	
	.ttap {
		height: 70px;
		width: 100%;
		border-bottom: 1px solid #ccc;
	}
	
	thead > tr {
		background: #ffa500;
	}
	
	/* 핸들바 CSS */

	#htop1 {
		height: 50px;
		width: auto;
	}
	
	#htop1 .cbtn {
		padding: 10px;
	}

	#htop2 {
		height: 60px;
		width: auto;
	}
	
	#htop2 h4 {
		margin: 15px;
	}
	
	#htop2 button {
		margin: 10px 5px;
	}
	
	#htop2 hr {
		width: 380px;
	}
	
	#htop3 {
		height: 640px;
		width: auto;
		padding-left: 15px;
	}
	
	#bbl {
		width: 65%;
		height: 150px;
	}
	
	#bbr {
		width: 35%;
		height: 150px;
	}
	
	#hheader {
		width: 390px;
		height: 150px;
	}
	
</style>
</head>

<body>
	<jsp:include page="./assets/inc/top.jsp" />
		<div class="bbox clearfix">
		<div class="hhheader">
			<h2><b>&nbsp;&nbsp;&nbsp;관리자 페이지</b></h2>
		</div>
		<hr />
		
		<nav class="pull-left">
		
			<!-- 아코디언 영역 -->
			<div class="panel-group" id="accordion">
				<!-- 항목(1) -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> 회원 통계 </a></h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse out">
						<div class="panel-body">
							첫 번째 항목의 내용입니다.
						</div>
						<div class="panel-body">
							두 번째 항목의 내용입니다.
						</div>
					</div>
				</div>
			</div>
			<!--// 아코디언 영역 -->
			
		</nav>
		<div class="center">
			<div class="center-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center" style="width: 50px;"><input
								type='checkbox' class='all' value="checked"></th>
							<th class="text-center">회원번호</th>
							<th class="text-center">이름</th>
							<th class="text-center">아이디</th>
							<th class="text-center">비밀번호</th>
							<th class="text-center">이메일</th>
							<th class="text-center">전화번호</th>
							<th class="text-center">성별</th>
							<th class="text-center">지역</th>
							<th class="text-center">회원등급</th>
							<th class="text-center">가입일</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<%-- 조회결과가 없는 경우 --%>
							<c:when test="${output == null || fn:length(output) ==0 }">
								<tr>
									<td colspan="11" align="center">조회결과가 없습니다.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output}" varStatus="status">
									<%-- 출력을 위해 준비한 교수이름 변수 --%>
									<c:set var="name" value="${item.name}" />
	
									<%-- 검색어가 있다면? --%>
									<c:if test="${keyword != ''}">
										<%-- 검색어에 <mark> 태그를 적용하여 형광펜 효과 준비 --%>
										<c:set var="mark" value="<mark>${keyword}</mark>" />
										<%-- 출력을 위해 준비한 교수이름에서 검색어와 일치하는 단어를 형광펜 효과로 변경 --%>
										<c:set var="name" value="${fn:replace(name, keyword, mark)}" />
									</c:if>
	
									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/29_User_stasis2.do" var="viewUrl">
										<c:param name="fdpmember_id" value="${item.fdpmember_id}" />
									</c:url>
									<tr>
										<th class="text-center"><input type='checkbox'></th>
										<td align="center">${item.fdpmember_id}</td>
										<td align="center"><a class="bbttnn" href="${item.fdpmember_id}">${item.name}</a></td>
										<td align="center">${item.user_id}</td>
										<td align="center">${item.user_pw}</td>
										<td align="center">${item.email}</td>
										<td align="center">${item.tel}</td>
										<td align="center">
											<c:if test="${item.gender eq 1}">남</c:if>
											<c:if test="${item.gender eq 2}">여</c:if>
										</td>
										<td align="center">${item.addr2}</td>
										<td align="center">
											<c:if test="${item.member_grade eq 0}">관리자</c:if>
											<c:if test="${item.member_grade eq 1}">의사</c:if>
											<c:if test="${item.member_grade eq 2}">일반인</c:if>
										</td>
										<td align="center">${item.reg_date}</td>
									</tr>
	
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<div>
				<!-- 페이지 번호 구현 -->
				<%-- 이전 그룹에 대한 링크 --%>
				<c:choose>
					<c:when test="${pageData.prevPage > 0}">
						<%-- 이동할 URL 생성 --%>
						<c:url value="/28_User_stasis.do" var="prevPageUrl">
							<c:param name="page" value="${pageData.prevPage}" />
							<c:param name="keyword" value="${keyword}" />
						</c:url>
						<a href="${prevPageUrl}">[이전]</a>
					</c:when>
					<c:otherwise>
							[이전]
						</c:otherwise>
				</c:choose>

				<%-- 페이지 번호 (시작 페이지 부터 끝 페이지까지 반복) --%>
				<c:forEach var="i" begin="${pageData.startPage}"
					end="${pageData.endPage}" varStatus="status">
					<%-- 이동할 URL 생성 --%>
					<c:url value="/28_User_stasis.do" var="pageUrl">
						<c:param name="page" value="${i}" />
						<c:param name="keyword" value="${keyword}" />
					</c:url>

					<%-- 페이지 번호 출력 --%>
					<c:choose>
						<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
						<c:when test="${pageData.nowPage == i}">
							<strong>[${i}]</strong>
						</c:when>
						<%-- 나머지 페이지의 경우 링크 적용함 --%>
						<c:otherwise>
							<a href="${pageUrl}">[${i}]</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<%-- 다음 그룹에 대한 링크 --%>
				<c:choose>
					<%-- 다음 그룹으로 이동 가능하다면? --%>
					<c:when test="${pageData.nextPage > 0}">
						<%-- 이동할 URL 생성 --%>
						<c:url value="/28_User_stasis.do" var="nextPageUrl">
							<c:param name="page" value="${pageData.nextPage}" />
							<c:param name="keyword" value="${keyword}" />
						</c:url>
						<a href="${nextPageUrl}">[다음]</a>
					</c:when>
					<c:otherwise>
							[다음]
						</c:otherwise>
				</c:choose>
				<!-- 검색폼 -->
				<form method="get"
					action="${pageContext.request.contextPath}/28_User_stasis.do">
					<label for="keyword">검색어: </label> <input type="search"
						name="keyword" id="keyword" placeholder="이름 검색" value="${keyword}" />
					<button type="submit">검색</button>
				</form>
			</div>	
			<input type="hidden" id="check" value="${my_session_id}" />		
			</div>
		</div>
		<aside>
			<div id="memberView"></div>
		</aside>
	</div>

	<!-- 동적으로 생성될 HTML의 기본틀 -->
	<script type="text/x-handlebars-template" id="list-item-tmpl">
		<div class='membertmpl clearfix'>

			<div id="htop1">
				<div>
					<button type="submit" class="close cbtn" aria-hidden="true">&times;&nbsp;닫기</button>
				</div>
			</div>
			<div id="htop2">
				<h4 class="pull-left"><strong>회원 상세정보</strong></h4>
				<button type="submit" class="btn btn-default pull-right" id="btn5">
					회원탈퇴
				</button>
				<button type="submit" class="btn btn-default pull-right"
					onclick = "location.href = '${pageContext.request.contextPath}/27_Profile.do?fdpmember_id={{fdpmember_id}}'">
					회원수정
				</button>
				<hr />
			</div>
			<div id="htop3">
				<div id="hheader">
					<div id="bbl" class="pull-left">
						<h3><strong>{{name}}</strong></h3>
						<h6>회원 번호&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;{{fdpmember_id}}</h6>
						<h6>회원 아이디 :&nbsp;{{user_id}}</h6>
						<h6>가입일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;{{reg_date}}</h6>
					</div>
					<div id="bbr" class="pull-right">
						<span></span>
					</div>
				</div>
				<div id="hfooter">
					<p>비밀번호: {{user_pw}}</p>
					<p>이메일: {{email}}</p>
					<p>성별: {{convertGender gender}}</p>
					<p>생일: {{birthdate}}</p>
					<p>번호: {{tel}}</p>
					<p>주소1: {{addr1}}</p>
					<p>주소2: {{addr2}}</p>
					<p>주소3: {{addr3}}</p>
					<p>주소4: {{addr4}}</p>
					<p>정보수정일: {{edit_date}}</p>
					<p>의사번호: {{medical_field}}</p>
					<p>회원등급: {{convertMember_grade member_grade}}</p>
				</div>
			</div>
    	</div>
	</script>
	<jsp:include page="./assets/inc/bottom.jsp" />
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/animate/jquery.animatecss.min.js"></script>
	<!-- ajax-helper -->
	<script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.3.1.js"></script>
	
	<script>
		// 세션 없을 때는 21로 
		$(document).ready(function(){
				var sessionCheck = $('#check').attr('value');
				console.log(sessionCheck)
			    if(sessionCheck == '') {
					location.href="${pageContext.request.contextPath}/21_Management.do";
			        alert("세션이 만료 되었습니다. 로그인 후 이용하세요.");
			}   
		});

		/** handlebars 플러그인 안에 convertGender 함수 추가 */
		Handlebars.registerHelper('convertGender', function(g) {
			if (g == 1) {
				return "남자";
			} else {
				return "여자";
			}
		});
		
		/** handlebars 플러그인 안에 convertMember_grade 함수 추가 */
		Handlebars.registerHelper('convertMember_grade', function(m) {
			if (m == 0) {
				return "관리자";
			} else if (m == 1) {
				return "의사";
			} else {
				return "일반인";
			}
		});
		
		$(function() {
			
			$(".bbttnn").click(function(e) {
				e.preventDefault();
				
				var src = $(this).attr('href');
				
				$("#memberView").animateCSS('fadeInRight')
	
				console.log(src)
				
				$.ajax({
					url: "GMember.do",
					method: 'post',
					dataType: 'json',
					data: {fdpmember_id : src},
					success: function(req) {
						console.log(req);
						var template = Handlebars.compile($("#list-item-tmpl").html());
						var html = template(req);
						$("#memberView").html(html);
						
						$("#btn5").click(function(e) {
							e.preventDefault();
							if (!confirm("정말 " + req.name + " 님을(를) 탈퇴시키시겠습니까?")) {
								return false;
							} else {
								window.location = "ddelete_ok.do?fdpmember_id="+ req.fdpmember_id;
							}
						});
						
						$('.cbtn').click(function(e) {
							e.preventDefault();
							$("#memberView").animateCSS('fadeOutRight')
							setTimeout(function() {
								$("div[id='memberView']").css("visibility","hidden")
							}, 1000);
						}); // click 끝
					}
				});		// ajax	끝
			});		// click 끝
		});
	</script>
</body>
</html>
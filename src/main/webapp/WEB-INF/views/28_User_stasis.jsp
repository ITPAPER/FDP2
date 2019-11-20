<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="ko">
<head>
<jsp:include page="./assets/inc/head.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.css" />
<script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>

<style type="text/css">

/* 전체 박스 */
.bbox {
	width: 1170px;
	margin: auto;
}

/** 탭 */
.nav>li>a {
	width: 100px;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
	color: #757575;
}

/* 테이블 조정 */
td {
	vertical-align: middle !important;
}

thead>tr {
	background: #ffa500;
	border-top: 2px solid #ccc;
}

thead>tr>th:nth-child(1) {
	width: 300px;
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

/* 차트 */
#chartdiv {
	width: 100%;
	height: 500px;
	padding-bottom: 50px;
}
</style>
</head>

<body>
	<jsp:include page="./assets/inc/top.jsp" />

	<div class="bbox">
		<div class="container" style="min-height: 750px;">

			<h1 class="page-header">누적 접속 회원 통계</h1>
			
			<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center" style="width: 50px;">
								<input type='checkbox' class='all'
								value="checked"></th>
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
								<c:url value="/professor/view.do" var="viewUrl">
									<c:param name="fdpmember_id" value="${item.fdpmember_id}" />
								</c:url>
								<tr>
									<th class="text-center">
										<input type='checkbox'>
									</th>
									<td align="center">${item.fdpmember_id}</td>
									<td align="center"><a href="${viewUrl}">${name}</a></td>
									<td align="center">${item.user_id}</td>
									<td align="center">${item.user_pw}</td>
									<td align="center">${item.email}</td>
									<td align="center">${item.tel}</td>
									<td align="center">${item.gender}</td>
									<td align="center">${item.addr2}</td>
									<td align="center">${item.member_grade}</td>
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
					<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
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
						<label for="keyword">검색어: </label> <input type="search" name="keyword"
							id="keyword" placeholder="이름 검색" value="${keyword}" />
						<button type="submit">검색</button>
					</form>
					<button type="submit" id="btn4" class="btn btn-primary">
						수정
					</button>
					<button type="submit" id="btn5" class="btn btn-primary">
						삭제
					</button>
					
				</div>	
						
			<div>
				<!-- 탭 버튼 구성 -->
				<ul class="nav nav-tabs" id="mytab">
					<li><a href="#dept1" id="gr1" data-toggle="tab"
						data-deptno="1">지역</a></li>
					<li><a href="#dept2" data-toggle="tab" data-deptno="2">나이</a></li>
					<li><a href="#dept3" data-toggle="tab" data-deptno="3">성별</a></li>
					<li><a href="#dept4" data-toggle="tab" data-deptno="4">게시글</a></li>
					<li><a href="#dept5" data-toggle="tab" data-deptno="5">접속
							시간</a></li>
					<li><a href="#dept6" data-toggle="tab" data-deptno="6">인증
							대기</a></li>
				</ul>

				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade" id="dept1">
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover clearfix">
								<thead>
									<tr>
										<th class="text-center">회원 아이디</th>
										<th class="text-center">지역(구)</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">jihyeon0429</div>
											</div>
										</td>
										<td class="text-center">영등포구</td>
									</tr>

									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">lss0238</div>
											</div>
										</td>
										<td class="text-center">분당구</td>
									</tr>

									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">mingi115</div>
											</div>
										</td>
										<td class="text-center">동작구</td>
									</tr>

									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kcherry6123</div>
											</div>
										</td>
										<td class="text-center">강남구</td>

									</tr>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
											</div>
											<div class="bo2 pull-right">
												<div class="pull-left">kihyub</div>
											</div>
										</td>
										<td class="text-center">마포구</td>

									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="dept2">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="text-center">회원 아이디</th>
										<th class="text-center">나이</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
									<tr>
										<th class="text-center">회원 아이디</th>
										<th class="text-center">성별</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
									<tr>
										<th class="text-center">회원 아이디</th>
										<th class="text-center">게시글 수</th>
										<th class="text-center">댓글 수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
									<tr>
										<th class="text-center">회원 아이디</th>
										<th class="text-center">접속시간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
									<tr>
										<th class="text-center">회원 아이디</th>
										<th class="text-center">회원 등급</th>
										<th class="text-center">의사 인증</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">
											<div class="bo1 pull-left">
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
												<img class="pull-right" src="${pageContext.request.contextPath}/assets/img/icon2.png" />
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
				</div>
				<!-- 탭 박스 끝 -->

				<!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
				<div id="chartdiv"></div>
			</div>
		</div>
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" />

	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
		am4core.ready(function() {

			// Themes begin
			am4core.useTheme(am4themes_animated);
			// Themes end

			// Create chart
			var chart = am4core.create("chartdiv", am4charts.PieChart);
			chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

			chart.data = [ {
				country : "당산",
				value : 100
			}, {
				country : "분당",
				value : 95
			}, {
				country : "사당",
				value : 90
			}, {
				country : "강남",
				value : 85
			}, {
				country : "마포",
				value : 80
			}, {
				country : "용산",
				value : 75
			} ];

			var series = chart.series.push(new am4charts.PieSeries());
			series.dataFields.value = "value";
			series.dataFields.radiusValue = "value";
			series.dataFields.category = "country";
			series.slices.template.cornerRadius = 6;
			series.colors.step = 3;

			series.hiddenState.properties.endAngle = -90;

			chart.legend = new am4charts.Legend();

		}); // end am4core.ready()
	</script>

</body>
</html>
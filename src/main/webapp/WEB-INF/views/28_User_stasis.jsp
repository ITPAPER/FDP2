<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="ko">
<head>
<jsp:include page="./assets/inc/head.jsp" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.css" />
<script
	src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>

<style type="text/css">

/* 전체 박스 */
.bbox {
	width: 1170px;
	margin: auto;
}

thead>tr {
	background: #ffa500;
	border-top: 2px solid #ccc;
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
									<td align="center"><a href="${viewUrl}">${item.name}</a></td>
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
				<button type="submit" id="btn4" class="btn btn-primary">수정
				</button>
				<button type="submit" id="btn5" class="btn btn-primary">삭제
				</button>
			</div>
		</div>
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" />
</body>
</html>
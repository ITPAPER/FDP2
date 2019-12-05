<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<style type="text/css">
/** 버튼 가로 정렬 */
.a {
	display: inline-block;
}
/** 버튼 박스 고정 */
.b {
	width: 1140px;
}

/** 테이블 박스 고정 */
.table1 {
	width: 1140px;
}

/** 상단 제목 설정 */
.subject {
	width: 500px;
	height: 30px;	
}

/** 상단 '제목' 글씨 크기 설정 */
.subject1 {
	width: 50px;
}
</style>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<!-- <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<head>
	<jsp:include page="./assets/inc/head.jsp" />
	<jsp:include page="./assets/inc/remote_css.jsp" />
</head>
<body>
	<jsp:include page="./assets/inc/top.jsp" />

	<div class="container" style="min-height: 720px;">
	<jsp:include page="./assets/inc/remote.jsp" />

		<h1 id="title">Q &amp; A</h1>
		<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>
		<div class="table1">
		<!-- <form  method="post" enctype="multipart/form-data" action="16_Notice_board_new_ok.do"> -->
		<form  method="post" action="16_Notice_board_new_ok.do">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td>
							<h5>작성자</h5>
						</td>
						<td>	
							<h5>${cookie.Name.value}</h5>
							<input type="hidden" value="${cookie.Name.value}" name="writer_name" />
						</td>
					</tr>
					<tr>
						<td align="center" class="subject1">
							<h5 class="subject1">제목</h5>
						
						</td>
						
						<td>
							<textarea name="subject" class="subject"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content" class="ckeditor">
							</textarea>
						</td>
					</tr>
					</tbody>
				</table>
					<div>
						<label for="photo">첨부파일</label> <input type="file"
							name="photo" id="photo" />
					</div>
			<div class="b">
			<ul class="pull-right">
				<li class="a"><a href="13_Notice_board.do"
					class="btn btn-default btn-sm">취소</a></li>
				<li class="a"><button type="submit"
					class="btn btn-default btn-sm">완료</button></li>
			</ul>
		</div>
		</form>
		</div>	
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" />
</body>
</html>
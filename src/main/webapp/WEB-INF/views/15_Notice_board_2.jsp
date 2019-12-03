<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">
<style type="text/css">
/** 하단 버튼 가로로 정렬 */
.a {
	display: inline-block;
}

/** 하단 버튼 부분 박스 설정 */
.b {
	width: 1140px;
}

/** 테이블을 감싸는 박스로 테이블 크기 고정 (반응형 x)*/
.table1 {
	width: 1140px;
}

/** 댓글 부분 설정 */
.c {
	list-style: none;
	padding-left: 0;
}

/** 테이블 최소 크기 설정 */
.table {
	min-height: 400px;
}

.table1 .table .d {
	vertical-align : middle;
} 

/** ckeditor 박스 크기 설정 */
#cke_1_contents {
	min-height: 600px"WebContent/pages/15_Notice_board_2.jsp" !important;
}

.aaa {
	width: 100px;
	height: 10px;
}
/** 게시물 상단 타이틀바 설정 */
.subject_content {
	background-color: #eee;
}
</style>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
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
		<form  method="post" action="${pageContext.request.contextPath}/15_Notice_board_2_ok.do">
			<input type="hidden" name="document_id" value="${output.document_id}" />
			
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td class="aaa">
							<h5 align="center">작성자</h5>
						</td>
						<td>	
							<h5>${output.writer_name}</h5>
							<input type="hidden" name="writer_name" value="${output.writer_name}" /> 
						</td>
					</tr>
					<tr>
						<td class="subject1 aaa">
							<h5 class="subject1" align="center">제목</h5>
						<input type="hidden" name="hit" value="${output.hit}" />
						<input type="hidden" name="reg_date" value="${output.reg_date}" />
						<input type="hidden" name="edit_date" value="${output.edit_date}" />
						</td>
						
						<td>
							<input type="text" name="subject" class="subject" value="${output.subject}"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content" class="ckeditor"> ${output.content}</textarea>
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
				<!-- <li class="a"><a href="15_Notice_board_2_ok.do"
					class="btn btn-default btn-sm">완료</a></li> -->
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
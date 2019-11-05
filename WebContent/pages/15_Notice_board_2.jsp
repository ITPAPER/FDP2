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

/** 게시물 상단 타이틀바 설정 */
.subject_content {
	background-color: #eee;
}
</style>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<head>
<%@ include file="../inc/head.jsp"%>
<%@ include file="../inc/remote_css.jsp"%>
</head>

<body>
	<%@ include file="../inc/top.jsp"%>
	<div class="container" style="min-height: 500px;">
<%@ include file="../inc/remote.jsp"%>
		<h1 id="title">Q &amp; A</h1>
		<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>
		<div class="table1">
			<table class="table table-bordered">
				<tbody>
					<tr class="subject_content">
						<td><h4>목이 아파요. 감기인지 아닌지 진단 부탁드립니다ㅠㅠ </h4>
						<b>작성일: 2019-09-09 | 작성자: 김체리 | 조회수 : 23423</b></td>
					</tr>
					<tr>
					<td>
					<form>
						<fieldset>
							<textarea name="content" class="ckeditor">
								안녕하세요.
								3살 아기가 며칠전부터 피부에 빨간 반점이 올라오는 등 이상 증상이 있네요.  
								미열도 있습니다. 사진 첨부합니다. 조언부탁드려요.
								</textarea>
							</fieldset>
						</form>
						</td>
					</tr>
					<tr>
						<td>
							<form enctype="multipart/form-data">
								<fieldset>
									<div>
										<label for="photo">첨부파일</label> <input type="file"
											name="photo" id="photo" />
										<button type="button" class="close" aria-hidden="true">&times;</button>
									</div>
								</fieldset>
							</form>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="b">
			<ul class="pull-right">
				<li class="a"><a href="13_Notice_board.jsp"
					class="btn btn-default btn-sm">취소</a></li>
				<li class="a"><a href="14_Notice_board_i.jsp"
					class="btn btn-default btn-sm">완료</a></li>
			</ul>
		</div>
	</div>
	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
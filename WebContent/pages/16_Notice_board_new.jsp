<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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

</style>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
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
					<tr>
					<td>
					<form class="c">
						<fieldset>
							<textarea name="content" class="ckeditor">
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
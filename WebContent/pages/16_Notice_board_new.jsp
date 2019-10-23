<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<style type="text/css">
.menu-right {
	margin-left: 1040px;
}

.a {
	display: inline-block;
}

img {
	width: 20px;
	height: 20px;
	padding-right: 5px;
}

#tb {
	height: 60px;
	background: #E0E0E0;
}

#e {
	height: 50px;
}
</style>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<head>
<%@ include file="../inc/head.jsp"%>
</head>

<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 500px;">

		<h1 id="title">Q &amp; A</h1>
		<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>
		<div id="tb"></div>
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th></th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<textarea name="content" class="ckeditor">
							<td>
							
							</td>
							</textarea>
					</tr>
					<tr>
						<td>
							<form enctype="multipart/form-data">
								<fieldset>
									<div>
										<label for="photo">첨부파일</label> <input type="file"
											name="photo" id="photo" />
									</div>
								</fieldset>
							</form>

						</td>
					</tr>

				</tbody>
			</table>
		</div>

		<span class="menu-right">
			<li class="a"><a href="13_Notice_board.jsp"
				class="btn btn-default btn-sm">취소</a></li>
			<li class="a"><a href="14_Notice_board_i.jsp"
				class="btn btn-default btn-sm">완료</a></li>
		</span>

	</div>
	<div id="e"></div>
	<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>

	<%@ include file="../inc/bottom.jsp"%>

</body>
</html>
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

				<tbody>
					<tr>
						<td><b>작성일: 2019-09-09 | 작성자: 김체리 | 조회수 : 23423</b></td>
					</tr>
					<tr>
						<textarea name="content" class="ckeditor">
							<td>
							
							안녕하세요. <br />
							3살 아기가 며칠전부터 피부에 빨간 반점이 올라오는 등 이상 증상이 있네요. <br /> 
							미열도 있습니다. 사진 첨부합니다. 조언부탁드려요.
							
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
					<tr>
						<td><b>답변일: 2019-09-09 | 전문의: 박기협 | 전문 분야 : 소아과</b></td>
					</tr>
					<tr style="">
						<td><input ="textarea" style="height: 200px;">
							<p></p> 수두인 것으로 예측됩니다. 빠른 시일 내에 근처 소아 전문 병원에서 진단 받으시길 추천드립니다.
							<p></p> </input></td>
					</tr>

					<tr>
						<td>
							<h5>
								<b>댓글</b>
							</h5> <br /> <!-- 웹진 박스를 목록으로 구성하기 위한 구조 입니다. -->
							<ul class="media-list">
								<!-- 목록의 개별 항목이 웹진 박스로 구성됩니다. -->
								<li class="media">
									<!-- 제목영역의 float 처리를 위한 마감제 박스 -->
									<div class="clearfix">
										<!-- 제목에 float: left 적용 - pull-left -->
										<h5 class="media-heading pull-left">cpfl***</h5>
										<!-- 제목에 float: right 적용 - pull-right -->
										<div class="pull-right">
											<a href="#" title="수정"><i
												class="glyphicon glyphicon-edit"></i></a> <a href="#" title="삭제"><i
												class="glyphicon glyphicon-remove"></i></a>
										</div>
									</div>
									<p>요즘 수두가 유행이더라구요ㅠㅠ빨리 낫길..!</p> <small>2019-10-20
										15:11:32</small>
								</li>
							</ul>
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
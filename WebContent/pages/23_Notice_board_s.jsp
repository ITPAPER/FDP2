<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Notice_board</title>

<style type="text/css">
table {
	margin: auto;
}

.pagination {
	padding-left: 450px;
	display: inline-block;
}

.menu-right {
	padding-left: 310px;
}

.a {
	display: inline-block;
}

#e {
	height: 50px;
}

#all_check {
	margin-right: 800px;
}

#ck {
	width: 5px;
}

.f {
	background: #A5E3E6; opacity: .5;
}

.e {
	width: 15px;
}
</style>

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />

</head>

<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 500px;">

		<h1 id="title">Q &amp; A</h1>
		<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>



		<form class="navbar-form navbar-right" role="search">
			<label>전체선택&nbsp;&nbsp;<input type='checkbox' id='all_check'></label>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
			<button type="submit" class="btn btn-default">검색</button>
		</form>



		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th id="ck"></th>

						<th class="text-center">#</th>
						<th class="text-center">제목</th>
						<th class="tedt-center">작성자</th>
						<th class="text-center">작성일</th>
						<th class="text-center">조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr class="f">
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center"><img src="../img/announce.png" class="e">1</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">목이 아파요</td>
						<td class="text-center">김체리</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">456</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">2</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">열과 두통</td>
						<td class="text-center">이승석</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">4345</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">3</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">피부 알레르기</td>
						<td class="text-center">정민기</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">536</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">4</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">환절기 질병</td>
						<td class="text-center">조지현</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">865</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">5</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">유행성 독감</td>
						<td class="text-center">박기협</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">5678</td>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">6</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">목이 아파요</td>
						<td class="text-center">첼첼</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">34543</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">7</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">열과 두통</td>
						<td class="text-center">조장님</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">4567</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">8</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">피부 알레르기</td>
						<td class="text-center">밍키밍키</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">7885</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">9</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">환절기 질병</td>
						<td class="text-center">젼</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">7899</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td class="text-center">10</td>
						<td class="text-center"
							onClick="location.href='25_Notice_board_s_i.jsp'"
							style="cursor: pointer;">유행성 독감</td>
						<td class="text-center">쿨켭</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">6785</td>
					</tr>
				</tbody>
			</table>
		</div>


		<ul class="pagination pagination-md">
			<li class="disabled"><a href="#">&laquo;</a></li>
			<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>

		<span class="menu-right">
			<li class="a"><a href="16_Notice_board_new.jsp"
				class="btn btn-default btn-sm" id="btn2">공지등록</a></li>
			<li class="a"><a href="Notice_board_i.jsp"
				class="btn btn-default btn-sm" id="btn1">삭제</a></li>
		</span>




<div id="e"></div>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="../plugins/sweetalert/sweetalert2.all.min.js"></script>
<script>
	$(function() {
		$("#btn1").click(function(e) {

			e.preventDefault();

			// 확인, 취소버튼에 따른 후속 처리 구현
			swal({
				title : '확인', // 제목
				text : "정말 선택하신 항목을 삭제하시겠습니까?", // 내용
				type : 'warning', // 종류
				confirmButtonText : 'Yes', // 확인버튼 표시 문구
				showCancelButton : true, // 취소버튼 표시 여부
				cancelButtonText : 'No', // 취소버튼 표시 문구
			}).then(function(result) { // 버튼이 눌러졌을 경우의 콜백 연결
				if (result.value) { // 확인 버튼이 눌러진 경우
					swal('삭제', '성공적으로 삭제되었습니다.', 'success');
				} else if (result.dismiss === 'cancel') { // 취소버튼이 눌러진 경우
					swal('취소', '삭제가 취소되었습니다.', 'error');
				}
			});
		});
	});
	
	$(function() {
		$("#btn2").click(function(e) {

			e.preventDefault();

			// 확인, 취소버튼에 따른 후속 처리 구현
			swal({
				title : '확인', // 제목
				text : "공지사항으로 등록하시겠습니까?", // 내용
				type : 'warning', // 종류
				confirmButtonText : 'Yes', // 확인버튼 표시 문구
				showCancelButton : true, // 취소버튼 표시 여부
				cancelButtonText : 'No', // 취소버튼 표시 문구
			}).then(function(result) { // 버튼이 눌러졌을 경우의 콜백 연결
				if (result.value) { // 확인 버튼이 눌러진 경우
					swal('삭제', '성공적으로 등록되었습니다.', 'success');
				} else if (result.dismiss === 'cancel') { // 취소버튼이 눌러진 경우
					swal('취소', '공지사항 등록이 취소되었습니다.', 'error');
				}
			});
		});
	});

	$(function() {
		/* `#all_check`의 선택 상태가 변경되었을 때의 이벤트 */
		$("#all_check").change(function() {
			// 모든 `.hobby`의 선택 상태를 `#all_check`와 동일하게 맞춘다.
			$(".all").prop('checked', $(this).prop('checked'));
		});
	});
</script>
</div>
<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<jsp:include page="./assets/inc/head.jsp" />
<jsp:include page="./assets/inc/remote_css.jsp" />
<title>Notice_board</title>

<style type="text/css">
/** 테이블 설정 */
.table {
	width: 1140px;
	margin: auto;
	border: 1px solid #ccc;
}

/** 게시판 thead 색상 설정 */
thead {
	background-color: #ffb011;
}

/** 테이블 상단의 전체 선택과 search가 묶여 있는 박스 -> 테이블 크기와 맞춘 박스(고정시켜 페이지가 줄어도 search와 전체선택이 아래로 내려가지 않도록) */
#h {
	margin: auto;
	width: 1140px;
}

/** 우측 상단 전체 선택 체크박스 설정 */
#all_check {
	display: inline-block;
	margin-top: 40px;
	margin-left: 8px;
}

/** 우측 상단 검색 부분 설정 */
#search {
	padding: 5px 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	display: inline-block;
}

/** 검색에 placeholder 색상 밑 투명도 조절 */
::placeholder {
	color: #999;
	opacity: 1;
}

/** 하단 페이지 번호 표시 */
.pagination {
	padding-left: 450px;
	display: inline-block;
}

/** 하단 우측 버튼 부분 가로로 정렬 */
.a {
	display: inline-block;
}

/** 하단 번호 표시와 우측 버튼들 묶은 박스 -> 페이지 크기 변화에 따라 반응하지 않도록 박스로 고정 */
#g {
	margin: auto;
	width: 1140px;
}

/** 검색 부분과 하단의 버튼들 위치 조절 */
.pull-right {
	padding: 15px 0;
}

/** 게시판 레스트에 대한 테이블 비율 설정 */
.subject {
	width:60%;
}
</style>
</head>

<body>
	<jsp:include page="./assets/inc/top.jsp" />
	<div class="container" style="min-height: 870px;">
		<jsp:include page="./assets/inc/remote.jsp" />
		<h1 id="title">Q &amp; A</h1>
		<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>

		<form id="h" class="clearfix">
			<fieldset class="pull-left">
				<label><input type='checkbox' id='all_check'>&nbsp;&nbsp;전체선택</label>
			</fieldset>

			<fieldset class="pull-right">
				<input type="text" id="search" name="search" placeholder="Search" />
				<button type="submit" class="btn btn-default">검색</button>
			</fieldset>
		</form>

		<div class="table1">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="cbox"></th>
						<th class="numbering">#</th>
						<th class="subject">제목</th>
						<th class="text-center writer">작성자</th>
						<th class="text-center write_date">작성일</th>
						<th class="text-center hit">조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>1</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">목이 아파요. 감기인지 아닌지 진단 부탁드립니다 ㅠㅠ</td>
						<td class="text-center">김체리</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">456</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>2</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">열과 두통</td>
						<td class="text-center">이승석</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">4345</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>3</td>
						<td 
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">피부 알레르기</td>
						<td class="text-center">정민기</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">536</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>4</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">환절기 질병</td>
						<td class="text-center">조지현</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">865</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>5</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">유행성 독감</td>
						<td class="text-center">박기협</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">5678</td>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>6</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">목이 아파요</td>
						<td class="text-center">첼첼</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">34543</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>7</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">열과 두통</td>
						<td class="text-center">조장님</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">4567</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>8</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">피부 알레르기</td>
						<td class="text-center">밍키밍키</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">7885</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>9</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">환절기 질병</td>
						<td class="text-center">젼</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">7899</td>
					</tr>
					<tr>
						<td><label><input type='checkbox' class='all'
								value="checked"></label></td>
						<td>10</td>
						<td
							onClick="location.href='14_Notice_board_i.do'"
							style="cursor: pointer;">유행성 독감</td>
						<td class="text-center">쿨켭</td>
						<td class="text-center">2019-10-18</td>
						<td class="text-center">6785</td>
					</tr>
				</tbody>
			</table>
		</div>
	

	<div id="g" class="clearfix">
		<ul class="pagination pagination-md">
			<li class="disabled"><a href="#">&laquo;</a></li>
			<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>

		<ul class="pull-right">
			<li class="a"><a href="16_Notice_board_new.do"
				class="btn btn-default btn-sm">글쓰기</a></li>
			<li class="a"><a href="Notice_board_i.do"
				class="btn btn-default btn-sm" id="btn1">삭제</a></li>
		</ul>
	</div>
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" />
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
				/* `#all_check`의 선택 상태가 변경되었을 때의 이벤트 */
				$("#all_check").change(function() {
					// 모든 `.hobby`의 선택 상태를 `#all_check`와 동일하게 맞춘다.
					$(".all").prop('checked', $(this).prop('checked'));
				});
			});
		</script>

	
</body>
</html>
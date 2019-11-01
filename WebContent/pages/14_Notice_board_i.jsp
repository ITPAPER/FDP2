<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">
<style type="text/css">
/** 테이블 설정 */
.table2 {
	width: 1140px;
	margin: auto;
}

/** 테이블 최소 크기 설정 */
.table {
	min-height: 500px;
}

/** 하단 버튼들 li를 가로로 정렬하기 */
.a {
	display: inline-block;
}

/** 첨부파일 클립모양 이미지 설정 */
.attachment {
	width: 20px;
	height: 20px;
	padding-right: 5px;
}

/** 하단의 버튼들 위치 조절 */
.bottom-button {
	padding: 15px 0 30px 15px;
}

/** 댓글 설정 */
.comment {
	list-style: none;
	padding-left: 0;
}

/** 하단 버튼이 있는 박스 크기 설정 */
.b {
	width: 1140px;
}
</style>
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

		<div class="table2">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td><b>작성일: 2019-09-09 | 작성자: 김체리 | 조회수 : 23423</b></td>
					</tr>
					<tr>
						<td>
							<p></p> 안녕하세요. <br /> 3살 아기가 며칠전부터 피부에 빨간 반점이 올라오는 등 이상 증상이 있네요.
								<br /> 미열도 있습니다. 사진 첨부합니다. 조언부탁드려요.
							<p></p>
						</td>
					</tr>
					<tr>
						<td><a href="../img/baby_redspot.jpg">
								<img class="attachment" alt="첨부파일" src="../img/attachment.png" />
								피부 붉은 반점.jpg
							</a>
						</td>
					</tr>
					<tr>
						<td><b>답변일: 2019-09-09 | 전문의: 박기협 | 전문 분야 : 소아과</b>
						</td>
					</tr>
					<tr>
						<td>
							<p></p> 수두인 것으로 예측됩니다. 빠른 시일 내에 근처 소아 전문 병원에서 진단 받으시길 추천드립니다.
							<p></p>
						</td>
					</tr>
					<tr>
						<td>
							<h5>
								<b>댓글</b>
							</h5> <br /> 
							<!-- 웹진 박스를 목록으로 구성하기 위한 구조 입니다. -->
							<ul class="comment">
								<!-- 목록의 개별 항목이 웹진 박스로 구성됩니다. -->
								<li>
									<!-- 제목영역의 float 처리를 위한 마감제 박스 -->
									<div class="clearfix">
										<!-- 제목에 float: left 적용 - pull-left -->
										<h5 class="pull-left">cpfl***</h5>
										<!-- 제목에 float: right 적용 - pull-right -->
										<div class="pull-right">
											<a href="#" title="수정"><i
												class="glyphicon glyphicon-edit"></i></a> <a href="#" title="삭제"><i
												class="glyphicon glyphicon-remove"></i></a>
										</div>
									</div>
									<p>요즘 수두가 유행이더라구요ㅠㅠ빨리 낫길..!</p> 
										<small>2019-10-20 15:11:32</small>
								</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="clearfix b" >
			<ul class="pull-right bottom-button">
				<li class="a"><a href="14_Notice_board_i.jsp"
					class="btn btn-default btn-sm" id="btn1">삭제 </a></li>
				<li class="a"><a href="15_Notice_board_2.jsp"
					class="btn btn-default btn-sm">수정</a></li>
				<li class="a"><a href="13_Notice_board.jsp"
					class="btn btn-default btn-sm">메뉴</a></li>
			</ul>
		</div>
	</div>
	
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="../plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script>
			  $(function() {
				  $("#btn1").click(function(e) {
					  	e.preventDefault();
					  	
		                // 확인, 취소버튼에 따른 후속 처리 구현
		                swal({
		                    title: '확인',                // 제목
		                    text: "정말 선택하신 항목을 삭제하시겠습니까?",  // 내용
		                    type: 'warning',              // 종류
		                    confirmButtonText: 'Yes',     // 확인버튼 표시 문구
		                    showCancelButton: true,       // 취소버튼 표시 여부
		                    cancelButtonText: 'No',       // 취소버튼 표시 문구
		                }).then(function(result) {        // 버튼이 눌러졌을 경우의 콜백 연결
		                    if (result.value) {           // 확인 버튼이 눌러진 경우
		                        swal('삭제', '성공적으로 삭제되었습니다.', 'success');
		                    } else if (result.dismiss === 'cancel') {   // 취소버튼이 눌러진 경우
		                        swal('취소', '삭제가 취소되었습니다.', 'error');
		                   			 }	
		               			 });
		           			});
			  			});
			  
			  </script>
	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
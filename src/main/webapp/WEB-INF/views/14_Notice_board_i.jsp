<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

/** 게시물 상단 타이틀바 설정 */
.subject_content {
	background-color: #eee;
}

/** 상세페이지 게시물 상단바 - 제목, 작성자, 작성일, 수정일 */
.title_info {
	margin-bottom: -15px;
}

/** 의사 답변 컨텐츠의 제목 부분 설정 */
.table .doc_ans_title {
	padding: 0 2 0 0 ;
	border-bottom: 1px dotted;
	font-size: 20px;
}
</style>
<head>
	<jsp:include page="./assets/inc/head.jsp" />
	<jsp:include page="./assets/inc/remote_css.jsp" />
</head>

<body>
	<jsp:include page="./assets/inc/top.jsp" />

	<div class="container" style="min-height: 500px;">
	<jsp:include page="./assets/inc/remote.jsp" />
		<h1 id="title">Q &amp; A</h1>
		<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>

		<div class="table2">
			<table class="table table-bordered">
				<tbody>
					<tr class="subject_content">
						<td><h4>${output.subject}</h4>
							<h6 class="title_info">작성자:${output.writer_name}  &nbsp;&nbsp;
							작성일: ${output.reg_date} &nbsp;&nbsp;
							<c:choose>
								<c:when test="${output.edit_date != null}">
							수정일: ${output.edit_date}
								</c:when>
							</c:choose>
							</h6>
							
						</td>
					</tr>
					<tr>
						<td>
							${output.content}
						</td>
					</tr>
					<tr>
						<td><a href="./assets/img/baby_redspot.jpg">
								<img class="attachment" alt="첨부파일" src="./assets/img/attachment.png" />
								피부 붉은 반점.jpg
							</a>
						</td>
					</tr>
					
						<c:choose>
						<%-- 의사 답변이 없는 경우 --%>
						<c:when test="${output1 == null || fn:length(output1) == 0}">
						<!-- <tr id="doc_del">
							<td class="doc_ans_title">
								<b>전문의 소견</b>
							</td>
						</tr> -->
						<tr id="doc_del">
							<td colspan="6">
							<h5><b>전문의 소견</b></h5><br />
							현재까진 의사의 답변이 없습니다.</td>
						</tr>
						</c:when>
						<%-- 조회 결과가 있는 경우 --%>
						<c:otherwise>
							<%-- 출력을 위해 준비한 게시판 작성자명, 내용, 제목 --%>
								<c:set var="reg_date" value="${item1.reg_date}" />
								<c:set var="writer_name" value="${item1.writer_name}" />
								<c:set var="medical_field" value="${item1.medical_field}" />
								<c:set var="content" value="${item1.content}" />
								
								<tr>
									<td>
									<b>답변일: ${output1.reg_date}&nbsp;&nbsp;전문의: ${output1.writer_name}
								&nbsp;&nbsp;전문 분야 : ${output1.medical_field}</b>
									</td>
								</tr>
								<tr>
									<td>${output1.content}</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
					
					<tbody id="abc"></tbody>
					
					<tbody>
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
				<li class="a"><input type="button" value="삭제"  onclick="del(${output.document_id})"
					class="btn btn-default btn-sm" id="btn1" /></li>
				<li class="a"><a href="${pageContext.request.contextPath}/15_Notice_board_2.do?document_id=${output.document_id}"
					class="btn btn-default btn-sm">수정</a></li>
				<li class="a"><a href="${pageContext.request.contextPath}/13_Notice_board.do"
					class="btn btn-default btn-sm">메뉴</a></li>
				<c:choose>
					<c:when test="${cookie.UserGrade.value == 1}">
				<li class="a"><input type="button" value="의사 글쓰기"
					class="btn btn-default btn-sm doc_a" id="btn2" /></li>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
	<jsp:include page="./assets/inc/bottom.jsp" />
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="./assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<!-- <script>
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
			   -->
			<script>
			function del(document_id) {
				var chk = confirm("정말 게시글을 삭제하시겠습니까?");
				
				if(chk) {
					location.href='15_Notice_board_delete.do?document_id=' + ${output.document_id};
				}
			}
			</script>
			<script>
				$("#btn2").click(function(){
					$("#doc_del").empty();	// 의사가 글 작성할 때 아래의 의사 답변 내용이 없습니다 테이블 삭제됨
					var doc_feedback = "<tr><td><b>답변일: ${output1.reg_date}&nbsp;&nbsp;전문의: "
						doc_feedback +="${output1.writer_name}&nbsp;&nbsp;전문 분야 : ${output1.medical_field}</b></td></tr><tr><td colspan='2'><textarea name='content' class='ckeditor'></textarea></td></tr>"
					$("#abc").html(doc_feedback);
					
				})
			</script>
	</body>
</html>
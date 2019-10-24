<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    
    <style>
   	    * {
			padding: 0;
			margin: 0;
			text-decoration: none;
			color: black;
		}
		ul ,ol {
			list-style: none;
		}

		.box-h .mlogin {
			text-align: center;
			position: relative;
		}

		.box-h .mlogin h4 {
			font-size: 15px;
		}

		.box-h .mlogin .btn {
			height: 70px;
			width: 300px;
			font-size: 20px;
			position: relative;
			top: 70px;
		}


		.box-high {
			background: #ccc;
			height: 300px;
			width: 45%;
			margin: 20px 20px;
		}

		.box-low {
			background: #ccc;
			height: 300px;
			width: 45%;
			margin: 20px 20px;
		}

		.box-high .high-top {
			background: rgb(243, 156, 18);
			height: 50px;
			position: relative; 
		}

		.box-low .low-top {
			background: rgb(243, 156, 18);
			height: 50px; 
			position: relative;
		}

		.high-top .btn {
			position: absolute;
			top: 7px;
			right: 7px;
		}

		.low-top .btn {
			position: absolute;
			top: 7px;
			right: 7px;
		}

		.high-top h4 {
			position: absolute;
			top: 5px;
			left: 7px;
		}

		.low-top h4 {
			position: absolute;
			top: 5px;
			left: 7px;
		}

		tbody tr td {
			height: 50px;	
		}
			
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container">
		<div class="box-top">
			<h1>관리자 페이지</h1>
			<h4>회원관리 및 사이트 정보수정이 가능합니다.</h4>
		</div>
		<div class="box-h">
			<div class="box-high pull-left" style="background: #ffa500;">
				<div class="mlogin">
					<h4>Find Doctor를 더 안전하고 편리하게 관리하세요.</h4>
					<button type="button" class="btn btn-gray" 
					onclick = "location.href ='22_Login_s.jsp'">
						Find Doctor 관리자 로그인	
					</button>
				</div>
			</div>
			<div class="box-high pull-right">
				<div class="high-top">
					<h4 class="pull-left">게시판 관리</h4>
					<button type="button" class="btn btn-primary pull-right">
						더보기
					</button>
				</div>
				<table class="table table-hover">
				<tbody>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">게시물 삭제</td>						
					</tr>
					<tr>
						<td class="text-center">2</td>
						<td class="text-center">게시물 옮기기</td>						
					</tr>
					<tr>
						<td class="text-center">3</td>
						<td class="text-center">게시물 수정</td>	
					</tr>
					<tr>
						<td class="text-center">4</td>
						<td class="text-center">뭐하지</td>	
					</tr>
					<tr>
						<td class="text-center">5</td>
						<td class="text-center">뭐넣을까?</td>	
					</tr>
				</tbody>
				</table>
			</div>
		</div>
		<div class="box-l">
			<div class="box-low pull-left">
				<div class="low-top">
					<h4 class="pull-left">누적 접속회원 통계(modal)</h4>
					<button type="button" class="btn btn-primary pull-right">
						더보기
					</button>
				</div>
				<table class="table table-hover">
				<tbody>
					<tr data-toggle="modal" data-target="#myModal">
						<td class="text-center">1</td>
						<td class="text-center">연령별 통계</td>						
					</tr>
					<tr  data-toggle="modal" data-target="#myModal">
						<td class="text-center">2</td>
						<td class="text-center">나이별 통계</td>						
					</tr>
					<tr  data-toggle="modal" data-target="#myModal">
						<td class="text-center">3</td>
						<td class="text-center">지역별 통계</td>	
					</tr>
					<tr  data-toggle="modal" data-target="#myModal">
						<td class="text-center">4</td>
						<td class="text-center">계절별 통계</td>	
					</tr>
					<tr  data-toggle="modal" data-target="#myModal">
						<td class="text-center">5</td>
						<td class="text-center">통계</td>	
					</tr>
				</tbody>
				</table>
			</div>
			<div class="box-low pull-right">
				<div class="low-top">
					<h4 class="pull-left">회원 관리</h4>
					<button type="button" class="btn btn-primary pull-right">
						더보기
					</button>
				</div>
				<table class="table table-hover">
				<tbody>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">일반 회원정보 열람</td>						
					</tr>
					<tr>
						<td class="text-center">2</td>
						<td class="text-center">의사 회원정보 열람</td>						
					</tr>
					<tr>
						<td class="text-center">3</td>
						<td class="text-center">신고회원 조회</td>	
					</tr>
					<tr>
						<td class="text-center">4</td>
						<td class="text-center">대기회원 조회</td>	
					</tr>
					<tr>
						<td class="text-center">5</td>
						<td class="text-center">회원 강퇴</td>	
					</tr>
				</tbody>
				</table>
			</div>
		</div>
		<!-- box-top 끝 -->

		<!-- .modal -->
		<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- .modal-dialog -->
			<div class="modal-dialog">
				<!-- .modal-content -->
				<div class="modal-content">
					<!-- 제목 -->
					<div class="modal-header">
						<!-- 닫기버튼 -->
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">Modal 써보기</h4>
					</div>
					<!-- 내용 -->
					<div class="modal-body">
						<h4>팝업창의 내용 영역</h4>
						<p>
							내용
						</p>
						<div id="chart_div"></div>
					</div>
					<!-- 하단 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							Close
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>
	
	<%@ include file="../inc/bottom.jsp" %>
	
	<script type="text/javascript">
	
	</script>
  </body>
</html>
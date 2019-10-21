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
		padding-left: 330px;
	}
	
	.a {
		display: inline-block;
		
	}
	

</style>

<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />
		
</head>

<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 500px;">
		<!DOCTYPE html>
		<html lang="ko">

	<h1 id="title">Q & A</h1>
	<p id="description">자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.</p>
	
	<form class="navbar-form navbar-right" role="search">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Search">
		</div>
		<button type="submit" class="btn btn-default">검색</button>
	</form>
	

	
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th class="text-center">#</th>
							<th class="text-center">제목</th>
							<th class="tedt-center">작성자</th>
							<th class="text-center">작성일</th>
							<th class="text-center">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center">1</td>
							<td class="text-center">목이 아파요</td>
							<td class="text-center">김체리</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">456</td>
						</tr>
						<tr>
							<td class="text-center">2</td>
							<td class="text-center">열과 두통</td>
							<td class="text-center">이승석</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">4345</td>
						</tr>
						<tr>
							<td class="text-center">3</td>
							<td class="text-center">피부 알레르기</td>
							<td class="text-center">정민기</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">536</td>
						</tr>
						<tr>
							<td class="text-center">4</td>
							<td class="text-center">환절기 질병</td>
							<td class="text-center">조지현</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">865</td>
						</tr>
						<tr>
							<td class="text-center">5</td>
							<td class="text-center">유행성 독감</td>
							<td class="text-center">박기협</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">5678</td>
						<tr>
							<td class="text-center">6</td>
							<td class="text-center">목이 아파요</td>
							<td class="text-center">첼첼</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">34543</td>
						</tr>
						<tr>
							<td class="text-center">7</td>
							<td class="text-center">열과 두통</td>
							<td class="text-center">조장님</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">4567</td>
						</tr>
						<tr>
							<td class="text-center">8</td>
							<td class="text-center">피부 알레르기</td>
							<td class="text-center">밍키밍키</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">7885</td>
						</tr>
						<tr>
							<td class="text-center">9</td>
							<td class="text-center">환절기 질병</td>
							<td class="text-center">젼</td>
							<td class="text-center">2019-10-18</td>
							<td class="text-center">7899</td>
						</tr>
						<tr>
							<td class="text-center">10</td>
							<td class="text-center">유행성 독감</td>
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
				<li class="a"><a href="Notice_board_i.jsp" class="btn btn-default btn-sm">글쓰기</a></li>
				<li class="a"><a href="Notice_board_i.jsp" class="btn btn-default btn-sm">삭제</a></li>
			</span>
		</html>


	</div>

	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
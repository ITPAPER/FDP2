<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">  -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Notice_board</title>

<style type="text/css">
.container {
	width: 1400px;
}

table {
	margin: auto;
}

.text-left {
	background: #777;
}

.menu-right {
	padding-left: 330px;
}

h1 {
	font-size: 40px;
	margin: 20px 0 10px 0;
	font-weight: 900;
	color: #2F9D27;
}

h2 {
	color: #fff;
	font-size: 20px;
	margin: 0 0 10px 0;
	font-weight: 700px;
}

h3 {
	color: #fff;
	font-size: 14px;
	margin: 0;
}

h6 {
	display: inline-block;
	font-size: 14px;
	margin: 0;
}

hr {
	margin: 5px 0 5px 0;
}
</style>

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />
</head>

<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 100px;">
		<div>
			<h1 id="title">종합상황판</h1>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>한양대학교병원</h2>
							<hr />
							<h3>서울특별시 성동구 왕십리로 222-1 (사근동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">7 /
							<h6>20</h6>
						</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>


		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>(학)고려중앙학원
								고려대학교의과대학부속병원(안암병원)</h2>
							<hr />
							<h3>서울특별시 성북구 고려대로 73, 고려대병원 (안암동5가)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">7 /
							<h6>20</h6>
						</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>


		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>고려대학교의과대학부속구로병원</h2>
							<hr />
							<h3>서울특별시 구로구 구로동로 148, 고려대부속구로병원 (구로동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">7 /
							<h6>20</h6>
						</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>서울대학교병원</h2>
							<hr />
							<h3>서울특별시 종로구 대학로 101 (연건동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">7 /
							<h6>20</h6>
						</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">5 /
							<h6>18</h6>
						</td>
						<td class="text-center">0 /
							<h6>2</h6>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>이화여자대학교의과대학부속목동병원
							</h2>
							<hr />
							<h3>서울특별시 양천구 안양천로 1071 (목동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">7 /
							<h6>20</h6>
						</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">3 /
							<h6>5</h6>
						</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>학교법인가톨릭학원가톨릭대학교서울성모병원</h2>
							<hr />
							<h3>서울특별시 서초구 반포대로 222 (반포동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>


		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>중앙대학교병원</h2>
							<hr />
							<h3>서울특별시 동작구 흑석로 102 (흑석동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>경희대학교병원</h2>
							<hr />
							<h3>서울특별시 동대문구 경희대로 23 (회기동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>

						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>학교법인연세대학교의과대학세브란스병원</h2>
							<hr />
							<h3>서울특별시 서대문구 연세로 50-1 (신촌동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">3 /
							<h6>17</h6>
						</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>강북삼성병원</h2>
							<hr />
							<h3>서울특별시 종로구 새문안로 29 (평동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>건국대학교병원</h2>
							<hr />
							<h3>서울특별시 광진구 능동로 120-1 (화양동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>재단법인아산사회복지재단서울아산병원</h2>
							<hr />
							<h3>서울특별시 송파구 올림픽로43길 88, 서울아산병원 (풍납동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">7 /
							<h6>20</h6>
						</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">8 /
							<h6>23</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>연세대학교의과대학강남세브란스병원</h2>
							<hr />
							<h3>서울특별시 강남구 언주로 211, 강남세브란스병원 (도곡동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
						<td class="text-center"></td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>삼성서울병원</h2>
							<hr />
							<h3>서울특별시 강남구 일원로 81 (일원동, 삼성의료원)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">2 /
							<h6>2</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">1 /
							<h6>13</h6>
						</td>
						<td class="text-center">7 /
							<h6>13</h6>
						</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th colspan="10" class="text-left"><h2>의료법인한전의료재단한일병원</h2>
							<hr />
							<h3>서울특별시 도봉구 우이천로 308 (쌍문동)</h3></th>
					</tr>
					<tr>
						<th class="text-center">응급실 일반 병상</th>
						<th class="text-center">응급실 소아 병상</th>
						<th class="text-center">응급실 음압 격리 병상</th>
						<th class="tedt-center">응급실 일반 격리 병상</th>
						<th class="text-center">응급전용 중환자실</th>
						<th class="text-center">내과중환자실</th>
						<th class="text-center">외과중환자실</th>
						<th class="text-center">신생아중환자실</th>
						<th class="text-center">소아 중환자실</th>
						<th class="text-center">소아응급전용 중환자실 병상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">6 /
							<h6>27</h6>
						</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">4 /
							<h6>4</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
						<td class="text-center">2 /
							<h6>20</h6>
						</td>
						<td class="text-center">-</td>
						<td class="text-center">-</td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>

	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
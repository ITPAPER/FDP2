<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>

<%@ include file="../inc/head.jsp"%>
<style type="text/css">

.box {
	position:relative;
	right:15px;
	padding:0 0 0 20px;
	margin: 0 0 0 0;
	background:#eee;
	width:1170px;
}

.menu {
	background:#696969;
	display: block;
	width: auto;
	padding: 5px;
	background:#fff;
}

#gnb img {
	dispaly: block;
	width: 60px;
	padding: 10px;
}

.icon1 {
	display: block;
	width: 55px;
	float: right;
}

.navbar {
	width : 1170px;
	position:relative;
	right:19px;
}



.menu .navbar .collapse .btn-group .btn-info {
	background-color: #aaaaaa;
	display:inline-block;
	padding: 5px;
	margin: 6px;
	border-color: #696969;
	width:100px;
	height: 50px;
	color: #ffffff;
	font-size: 20px;
}

/* 갤러리 영역 박스
 * -------------------------------------- */
#gallery {
	width: 1400px;
	margin: auto;
}

/* 한 줄에 3개씩, 가로 배치
 * -------------------------------------- */
#gallery li {
	list-style: none;
	width: 350px;
	float: left;
	padding: 170px 80px 0 80px;
}

/* 링크의 영역 확장 (공식)
 * - 크기와 여백을 주기 위하여 block으로 설정 후, 가로 가득
 * -------------------------------------- */
#gallery li a {
/* 	display: block; */
	width: auto;
	padding: 0px;
}

/* 링크 안의 span을 block으로 처리
 * -------------------------------------- */
#gallery li a span {
	display: block;
	width: auto;
}

/* 이미지는 가득 채움
 * -------------------------------------- */
#gallery .thumb img {
	width: 80%;
	position: relative;
	left:22px;
}

/* 텍스트 영역 처리
 * -------------------------------------- */
#gallery .text {
	width: 95%;
	height: 35px;
	margin: auto;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 20px;
	color: #777;
	font-size: 20px;
}

/* 게시물의 마우스 오버
 * -------------------------------------- */
#gallery li a:hover {
	background-color: #eee;
}
</style>
</head>
<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="min-height: 500px;">
	
		<div class="menu" style="height: 69px;">
	
		  <nav class="navbar navbar-default" role="navigation">

				<!-- 메뉴 항목 -->
				<div class="collapse navbar-collapse" id="gnb">
					<ul class="nav navbar-nav">
								<li><span class="icon"><a href="01_Main.jsp"><img src="../img/home.png" alt="병원찾기" /></a></span></li></ul>
				<div class="btn-group">
				<button  type="button"  class="btn btn-info dropdown-toggle" data-toggle="dropdown">
					메뉴
				</button>
				<!-- 재사용될 코드 입니다. -->
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
				<!-- 재사용될 코드 입니다. -->
			<div class="btn-group">
				<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
					Action <span class="caret"></span>
				</button>
				<!-- 재사용될 코드 입니다. -->
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
				<!--// 재사용될 코드 입니다. -->
			</div>
			</div>
				
					 <a href="#"><span class="icon1"> <img src="../img/URLcopy.png" alt="URL복사" /></span></a>
						
					 <a href="#"><span class="icon1"> <img src="../img/print.png" alt="페이지 인쇄" /></span></a> 
							
					 <a href="#"><span class="icon1"> <img src="../img/heart_e.png" alt="나만의 메뉴" /></span></a>
				</div>
			</nav>
			<!--// 메뉴바 -->
		</div>


		<div class="box" style="height: 900px;">
			<ul id="gallery">
				<li><a href="03_Find_h.jsp"> <span class="thumb"> <img
							src="../img/hospital1.png" alt="병원찾기" />
					</span> <span class="text">병원찾기</span>
				</a></li>
				<li><a href="05_Find_e.jsp"> <span class="thumb"> <img
							src="../img/emergecy1.png" alt="응급실 찾기" />
					</span> <span class="text">응급실 찾기</span>
				</a></li>
				<li><a href="06_Find_e_i.jsp"> <span class="thumb"> <img
							src="../img/monitoring1.png" alt="응급실 모니터링" />
					</span> <span class="text">응급실 모니터링</span>
				</a></li>
				<li><a href="07_Statistics.jsp"> <span class="thumb"> <img
							src="../img/graph1.png" alt="질병 통계 현황" />
					</span> <span class="text">질병 통계 현황</span>
				</a></li>
				<li><a href="13_Notice_board.jsp"> <span class="thumb"> <img
							src="../img/board1.png" alt="게시판" />
					</span> <span class="text">게시판</span>
				</a></li>
				<li><a href="19_Team_introduction.jsp"> <span class="thumb"> <img
							src="../img/developer1.png" alt="개발자들" />
					</span> <span class="text">개발자들</span>
				</a></li>
			</ul>
		</div>
	</div>

	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
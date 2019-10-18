<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>
<style type="text/css">
.box {
	padding: 0;
	margin: 0;
}

.menu {
	display: block;
	width: auto;
	padding: 10px;
}

img {
	dispaly: block;
	width: 50px;
}

.icon1 {
	display: block;
	width: 50px;
	float: right;
	
}
/* 갤러리 영역 박스
 * -------------------------------------- */
#gallery {
	width: 1200px;
	margin: auto;
}

/* 한 줄에 3개씩, 가로 배치
 * -------------------------------------- */
#gallery li {
	list-style: none;
	width: 350px;
	float: left;
	padding: 100px 80px 0 80px;
}

/* 링크의 영역 확장 (공식)
 * - 크기와 여백을 주기 위하여 block으로 설정 후, 가로 가득
 * -------------------------------------- */
#gallery li a {
	display: block;
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
	width: 100%;
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
	color: #696969;
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

	<div class="container" style="height: 900px;">
	
		<div class="menu" style="height: 100px;">
	
		  <nav class="navbar navbar-default" role="navigation">
				<!-- 로고 -->
				<div class="navbar-header">
					<!-- 반응형 메뉴 구현 기능 추가 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#gnb">
						<span class="sr-only">메뉴열기</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!--// 반응형 메뉴 구현 기능 추가 끝 -->
				</div>
				<!-- 메뉴 항목 -->
				<div class="collapse navbar-collapse" id="gnb">
					<ul class="nav navbar-nav">
								<li><span class="icon"><a href="#"><img src="../img/home.png"
					alt="병원찾기" /></a></span></li>
						<li><a href="#">분류</a></li>
						<li><a href="#">소분류</a></li>
					</ul>
					 <a href="#"><span class="icon1"> <img src="../img/list.png" alt="병원찾기" /></span></a>
						
					 <a href="#"><span class="icon1"> <img src="../img/share.png" alt="병원찾기" /></span></a> 
							
					 <a href="#"><span class="icon1"> <img src="../img/bookmark.png" alt="병원찾기" /></span></a>
				</div>
			</nav>
			<!--// 메뉴바 -->
		</div>


		<div class="box" style="height: 700px;">
			<ul id="gallery">
				<li><a href="03_Find_h.jsp"> <span class="thumb"> <img
							src="../img/hospital.png" alt="병원찾기" />
					</span> <span class="text">병원찾기</span>
				</a></li>
				<li><a href="05_Find_e.jsp"> <span class="thumb"> <img
							src="../img/emergecy.png" alt="응급실 찾기" />
					</span> <span class="text">응급실 찾기</span>
				</a></li>
				<li><a href="06_Find_e_i.jsp"> <span class="thumb"> <img
							src="../img/monitoring.png" alt="응급실 모니터링" />
					</span> <span class="text">응급실 모니터링</span>
				</a></li>
				<li><a href="07_Statistics.jsp"> <span class="thumb"> <img
							src="../img/graph.png" alt="질병 통계 현황" />
					</span> <span class="text">질병 통계 현황</span>
				</a></li>
				<li><a href="13_Notice_board.jsp"> <span class="thumb"> <img
							src="../img/board.png" alt="게시판" />
					</span> <span class="text">게시판</span>
				</a></li>
				<li><a href="18_Team_introduction.jsp"> <span class="thumb"> <img
							src="../img/delveroper.png" alt="개발자들" />
					</span> <span class="text">개발자들</span>
				</a></li>
			</ul>
		</div>
	</div>

	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
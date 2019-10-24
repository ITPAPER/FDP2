	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header-box">
<div class="topbar-box">
<div class= "topbar">
				<a href="02_Login.jsp" class="header-btn">로그인</a>
				<a href="09_Sign_up_a.jsp" class="header-btn">회원가입</a>
</div>
</div>
		<div class="topm head-border">
			<div class="col-md-3 ww"><img src="../img/FindDoctor1.png" class="logo "></div>
			<div class="col-md-9 ww">
				<div class="btn-cover collapse navbar-collapse" id="gnb">
				<ul class="nav navbar-nav" id="droph">
					<li><a href="01_Main.jsp" class="page-move">홈</a></li>
					<li><a href="07_Statistics.jsp" class="page-move">데이터통계</a></li>
					<li><a href="13_Notice_board.jsp" class="page-move">게시판</a></li>
					<li class="dropdown">
						<a href="#" class="page-move dropdown-toggle" data-toggle="dropdown">병원 검색<b class="caret"></b></a>
						<ul class="dropdown-menu">
								<li><a href="03_Find_h.jsp">일반 병원 찾기</a></li>
								<li><a href="05_Find_e.jsp">응급실 찾기</a></li>
								<li><a href="#">응급실 현황</a></li>
						</ul>
					</li>
					<li><a href="18_Intention.jsp" class="page-move">센터소개</a></li>
				</ul>
				</div>
			</div>
		</div>
	</header>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="menu" style="height: 60px;">
	<nav class="navbar navbar-default" role="navigation">
		<!-- 메뉴 항목 -->
		<div class="collapse navbar-collapse" id="gnb">
			<ul class="nav navbar-nav">
				<li><span class="icon1"><a href="01_Main.jsp"><img
							src="../img/home.png" alt="메뉴" /></a></span></li>
			</ul>
			<div class="btn-group">
				<button type="button" class="btn btn-info" data-toggle="dropdown">
					자기 페이지이름 <span class="caret"></span>
				</button>
				<!-- 재사용될 코드 입니다. -->
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">주요사업</a></li>
					<li class="divider"></li>
					<li><a href="#">응급의료체계</a></li>
					<li class="divider"></li>
					<li><a href="#">정보자료</a></li>
					<li class="divider"></li>
					<li><a href="#">센터소개</a></li>
				</ul>
				<!-- 재사용될 코드 입니다. -->
				<div class="btn-group">
					<button type="button" class="btn btn-info" data-toggle="dropdown">
						Action <span class="caret"></span>
					</button>
					<!-- 재사용될 코드 입니다. -->
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">센터소개</a></li>
						<li class="divider"></li>
						<li><a href="#">인사말</a></li>
						<li class="divider"></li>
						<li><a href="#">설립배경</a></li>
						<li class="divider"></li>
						<li><a href="#">미션/비전</a></li>
						<li class="divider"></li>
						<li><a href="#">오시는 길</a></li>
					</ul>
					<!--// 재사용될 코드 입니다. -->
				</div>
			</div>
			<a href="#"><span class="icon1"> <img
					src="../img/URLcopy.png" alt="URL복사" /></span></a> <a href="#"><span
				class="icon1"> <img src="../img/print.png" alt="페이지 인쇄" /></span></a> <a
				href="#"><span class="icon1"> <img
					src="../img/heart_e.png" alt="나만의 메뉴" /></span></a>
		</div>
	</nav>
	<!--// 메뉴바 -->
</div>
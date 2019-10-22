<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">

.box {
	position:relative;
	right:15px;
	padding:0 0 0 70px;
	margin: 0 0 0 0;
	background:#fff;
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


h1 {
	display:block;
	padding:56px 0 0 0;
	margin: 0;
    font-size: 36px;
    font-weight: 700;
    color: #333;
    line-height: 1.4em;
}

h2 {
	display:block;
	padding:250px 0 0 0;
	margin: 0;
    font-size: 30px;
    font-weight: 700;
    color: #333;
    line-height: 1.4em;
}

h3 {
	display:block;
	padding:56px 0 0 0;
	margin: 0;
    font-size: 30px;
    font-weight: 700;
    color: #333;
    line-height: 1.4em;
}

h4 {
	display:block;
	padding:38px 0 20px 0;
	margin: 0;
    font-size: 18px;
    font-weight: 700;
    color: #333;
    line-height: 1.4em;
}

h5 {
	padding: 0 0 80px 0;
	margin:0 0 0 50px;
	font-size:25px;
}

p {
	margin-top: 3px;
    font-size: 14px;
    color: #707070;
    
   }
   
h6{
color:abcdef;

}


/* 갤러리 영역 박스
 * -------------------------------------- */
#gallery {
	list-style: none;
	width: 1170px;
	float: left;
	padding: 0 0 0 0px;
	
	
}


/* 한 줄에 3개씩, 가로 배치
 * -------------------------------------- */
#gallery li {
	list-style: none;
	width: 350px;
	margin:auto;
	float: left;
	position:relative;
	right:20px;
}

/* 링크 안의 span을 block으로 처리
 * -------------------------------------- */
#gallery li span {
	display: block;
	width: auto;
}

/* 이미지는 가득 채움
 * -------------------------------------- */
#gallery .thumb img {
	width: 100%;
	padding :0 10px;
}

 .thumb img {
 	display:inline-block;
	list-style: none;
	margin:auto;
	padding: 20px 50px 0 15px;
	float: left;
	}
	
  .box ul li {
 list-style: none;
 display:block;
 padding: 30px 0 0 0;
 
 }


</style>
 </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="container"style="min-height:500px;">
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
				<div class="box" style="height: 1100px;">
				<h1> 미션/비젼 </h1>
				<p> Find Doctor의 현재와 미래를 함께해 주세요! </p>
				<h3>Find Doctor 미션</h3>
				<h4>누구에게나 신속하고 정확한 최상의 의료서비스 제공</h4>
				
				<ul id="gallery">
				<li><span class="thumb"> <img
							src="../img/vision_1.gif" alt="병원찾기" />
					</span>
				</li>
				<li><span class="thumb"> <img
							src="../img/vision_2.gif" alt="응급실 찾기" />
					</span>
				</li>
				<li><span class="thumb"> <img
							src="../img/vision_3.gif" alt="응급실 모니터링" />
					</span>
				</li>
				</ul>
				<h2>중앙 응급의료센터 비전</h2>
				<h4>이젠 Find Doctor에서 국민을 위한 응급 의료서비스가 실현됩니다.</h4>
				
				<span class="thumb"> <img
							src="../img/vision_4.gif" alt="병원찾기" />
				</span>
				
							
			 	<ul>
					<li>응급의료서비스 체제개선으로 선진 응급의료 서비스 추구</a></li>
					<li>전 국민이 참여하는 응급의료의 생활화</li>
					<li>응급의료에 대한 인지도 및 이용율 재고</li>
					<li>응급의료의 질향상 추진 및 관계기관과의 상호협조체계 강화</li>
					<li>응급의료의 질향상 추진 및 관계기관과의 상호협조체계 강화</li>
				</ul>
				
				
				
	</div>
	</div>
	
	<%@ include file="../inc/bottom.jsp" %>
  </body>
</html>
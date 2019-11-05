<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <link rel="stylesheet" type="text.css" href="../plugins/ajax/ajax_helper.css">
    <link rel="stylesheet" href="../plugins/youcover/youCover.css">
    <style type="text/css">
    	#bigbox{
    		height:710px;
    		overflow:hidden;
    	}
    	.login_box{
    		background-color: #E0E0E0;
    		padding : 5px;
    		height:150px;
    		border-radius: 10px;
    		
    	}
    	.login_cover{
    		height: 70px;
    		background-color: #5E5E5E;
    		border-radius: 4px;
    		text-align:center;
    		margin:10px;
    		margin-top:30px;
    		vertical-align: middle;
    	}
    	.login_btn{
    		border-radius: 4px;
    		margin-top: 10px;
    		color:white;
    		font-size: 20px;
    		display:block;
    		padding: 20px;
    		text-decoration: none !important;
    	}
    	.find_id{
    		display:inline-block;
    		margin-left: 10px;
    		margin-top: 6px;
    		color:#5e5e5e;
    	}
    	.sign_up{
    		display:inline-block;
    		margin-left: 70px;
    		margin-top: 6px;
    		color:#5e5e5e;
    	}
    	.contentsbox{
    		height:756px;
    	}
    	.find_hos{
    		text-align: center;
    		width:277px;
    		margin:auto;
    		color:#5e5e5e;
    		background-color: #FFB494;
    		font-size:25px;
    		border-radius: 5px;
    	}
    	.e-container{
    		border:1px solid #E0E0E0;
			z-index:10000;
    		background-color:white;
    		height:756px;

    	}
    	.e-btncover{
    		border-top: 1px solid #e0e0e0;
    		height:60px;

    	}
    	.e-title{height:60px;}
    	.rr{ margin-left:5px;}
    	#gmap{
    		height:0;
			width:66.66666% !important;
    	}
    	/* 전체 박스 크기 및 정렬 */
    	.accord { 
    		width: auto; 
    		margin: auto; 
    		transition-delay:0.3s;
    	}
	
		.accord-item{
			width:250px;
		}
        /* 제목 영역의 배경색상과 태두리 */
    	.accord-title {  background: #eeeeee; border: 1px solid #d5d5d5; }

        /* 제목영역의 링크에 대한 크기, 글자모양 */
    	 .accord-title > a {
    		display: block; width: auto;
    		padding: 10px;
    		color: #222;
    		font-size: 14px; 
    		text-decoration: none;
    		transition:0.3;
    	} 

        /* 내용영역의 여백, 글자크기, 태두리, 숨김 */
    	.content {
    		padding: 0px 15px;
    		font-size: 12px;
    		border-left: 1px solid #d5d5d5;
    		border-right: 1px solid #d5d5d5;
    		display: none;
    	}

        /* 마지막 내용 박스의 테두리 보정 */
        .accord-item:first-child > .accord-title {
        	margin-top:0;
        }
    	.content:last-child { border-bottom: 1px solid #d5d5d5;	}
    	#move{
    		position:relative;
    		bottom: 690px;
    		padding:0;
    		left:-15px;
    	}
    	#myer{
    		text-align:center;
    		color:black;
    		border-radius:10px;
    		position:relative;
    		bottom:756px;
    		left:370px;
    		display:block;
    		font-size:50px;
    		width:700px;
    		background-color:#F8A90E;
    		padding:25px;

    	}
    	.mynav{
    		margin:0;
    	}
    	.tl{border-radius: 15px 0 0 0;	}
    	.tr{border-radius: 0 15px 0 0;}
    	.bl{border-radius: 0 0 0 15px;}
    	.br{border-radius: 0 0 15px 0;}
    	
    	.nav-btn{
    		text-align:center;
    		background-color:#F8A90e;
    	}
    	.nav-btn-cent{
    		background-color:#FDD25D;
    	}
    	.nav-btn-cent > a{
    		color:black;
    	}
    	.nav-txt{
    		color:black;
    		font-size:30px;
    		font-weight:bold;
    	}
    	.ll{padding:0;}
    	.beinline{
    		display:inline-block;
    		text-align:center;
    		width: 32%;
    	}
    	.thumb{
    		display:block;
    		margin:auto;
    		width:120px;
    		height:110px;
    	}
    	.text{
    		color:black;
    		display:block;
    	}
    	.mymodal{
    		width:1000px;
    	}
    	/** 동영상 영역의 전체 크기를 설정한다. */
        .my-youtube-wrapper { width: 926px; height: 544px; margin: auto; }
        /** 내부적으로 사용되는 <iframe>태그의 border 제거 */
        iframe { border: 0; }
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<section>
		  	
		<div class="container blank" style="height:40px;"></div>

		<div class="container" id="bigbox">
			<div class="row contentsbox">
				<div class="col-md-3">
					<div class="row  login_box">
						<div class="login_cover"><a class="login_btn" href="02_Login.jsp">Find Doctor  로그인</a></div>
						<a href="#" class="find_id">아이디/비밀번호 찾기</a>
						<a href="08_Sign_up_c.jsp" class="sign_up">회원 가입</a>
					</div>

					
				</div>
				<div class="col-md-9 e-container" id="erer">
					<div class="row e-title rr">
						<h2><strong>응급실 찾기</strong><button id="xx"type="button" class="close" aria-hidden="true">&times;&nbsp;&nbsp;</button>	</h2>
					</div>
					<div class="row e-btncover rr">
						<br/>
						<button class="btn btn-warning gu" value="1">강북 지역</button>
						<button class="btn btn-warning gu" value="2">동서울 지역</button>
						<button class="btn btn-warning gu" value="3">동남 지역</button>
						<button class="btn btn-warning gu" value="4">강남 지역</button>
						<button class="btn btn-warning gu" value="5">남서울 지역</button>
						<button class="btn btn-warning gu" value="6">서남 지역</button>
						<button class="btn btn-warning gu" value="7">서서울 지역</button>
						<button class="btn btn-warning gu" value="8">도심 지역</button>
					</div>
					<div class="row rr">
						<div class="prog">
							<span class="progtext">지역을 선택해 주세요</span>
						</div>
						<div class="mapcover">
							<div class="col-md-8" id="gmap"></div>
							<div class="col-md-4 accord">
						
							</div>
						</div>	
					</div>
					
				</div>
			</div>
			<a href="#erer"id="myer"><img src="../img/siren.png" width="100px"> <b>응급실 찾기</b></a>


			<div class="container" id="move">
				<div class="row mynav">
					<div class="col-md-3 nav-btn tl">
						<a href="#" class="nav-txt">데이터 통계
							<br/>
							<img src="../img/chart_o.png" width="150px" height="160px">
						</a>	
					</div>
					<div class="col-md-6 nav-btn-cent">						
						<span  class="nav-txt">병원찾기</span>
						<br/><br/>
						<ul class="ll">
							<li class="beinline">
								<a class="hos-btn" href="#">
									<img  class="thumb" src="../img/hosicon.png" >
									<span class="text">일반 병원 찾기</span>
								</a>
							</li>
							<li class="beinline">
								<a class="hos-btn" href="#">
									<img  class="thumb" src="../img/siren1.png" >
									<span class="text">응급실 찾기</span>
								</a>
							</li>
							<li class="beinline">
								<a class="hos-btn" href="#">
									<img  class="thumb" src="../img/monitor.jpg" >
									<span class="text">응급실 상황판</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 nav-btn tr">
						<a href="#" class="nav-txt">게시판
						<br/>
						<img src="../img/navlist.png" width="150px" height="160px">
						</a>
					</div>
				</div>
				<div class="row mynav blr">
					<div class="col-md-3 nav-btn bl">
						<a href="#" class="nav-txt">질병 관련 정보
							<br/>
							<img src="../img/virus.png" width="150px" height="160px">
						</a>	
					</div>
					<div class="col-md-6 nav-btn-cent">						
						<span  class="nav-txt">유용한 정보</span>
						<br/><br/>
						<ul class="ll">
							<li class="beinline">
								<a class="hos-btn" data-toggle="modal" href="#myModal"	>
									<img  class="thumb" src="../img/YouTube.png" >
									<span class="text">체형 교정 운동</span>
								</a>
							</li>
							<li class="beinline">
								<a class="hos-btn" href="#">
									<img  class="thumb" src="../img/AED.png" >
									<span class="text">AED사용 방법</span>
								</a>
							</li>
							<li class="beinline">
								<a class="hos-btn" href="#">
									<img  class="thumb" src="../img/news.png" >
									<span class="text">의료 신문</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 nav-btn br">
						<a href="#" class="nav-txt">센터소개
						<br/>
						<img src="../img/center_intro.png" width="150px" height="160px">
						</a>
					</div>
				</div>
				
				<div class="container blank" style="height:40px;"></div>
				
				<!-- .modal -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- .modal-dialog -->
					<div class="modal-dialog mymodal">
						<!-- .modal-content -->
						<div class="modal-content">
							<!-- 제목 -->
							<div class="modal-header">
								<!-- 닫기버튼 -->
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
								</button>
								<h3 class="modal-title" id="myModalLabel">체형 교정 운동</h3>
							</div>
							<!-- 내용 -->
							<div class="modal-body">
								<!-- 탭 메뉴 시작 -->
								<ul class="nav nav-tabs">
									<li class="active"><a href="#neck" data-toggle="tab">목</a></li>
									<li><a href="#pelvis" data-toggle="tab">골반</a></li>
									<li><a href="#leg" data-toggle="tab">다리</a></li>
									<li><a href="#shoulder" data-toggle="tab">어께</a></li>
									<li><a href="#spine" data-toggle="tab">척추</a></li>
								</ul>
								<!--// 탭 메뉴 끝 -->
								<div class="tab-content">
									<div class="tab-pane fade in active" id="neck">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> 거북목 교정 </a></h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													<div class="panel-body">
														<!-- 동영상 영역 : 크기 지정을 위한 div -->
    													<div class="my-youtube-wrapper">
        													<!-- 동영상 플레이어 -->
        													<div data-youcover data-id='Io5NYpzfsEU'></div>
														</div>
													</div>
												</div>
												<div class="panel-heading">
													<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseEig"> 일자목 및 거북목 교정 </a></h4>
												</div>
												<div id="collapseEig" class="panel-collapse collapse in">
													<div class="panel-body">
														<!-- 동영상 영역 : 크기 지정을 위한 div -->
    													<div class="my-youtube-wrapper">
        													<!-- 동영상 플레이어 -->
        													<div data-youcover data-id='ILbiDeN5GK0'></div>
														</div>
													</div>
												</div>
    										</div>
										</div>
									</div>
									<div class="tab-pane fade" id="pelvis">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> 골반 전방 경사 교정 </a></h4>
												</div>
												<div id="collapseTwo" class="panel-collapse collapse in">
													<div class="panel-body">
														<!-- 동영상 영역 : 크기 지정을 위한 div -->
    													<div class="my-youtube-wrapper">
        													<!-- 동영상 플레이어 -->
        													<div data-youcover data-id='iQ7MnBxZpN8'></div>
														</div>
													</div>
												</div>
												<div class="panel-heading">
													<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThr"> 골반 후방 경사 교정 </a></h4>
												</div>
												<div id="collapseThr" class="panel-collapse collapse in">
													<div class="panel-body">
														<!-- 동영상 영역 : 크기 지정을 위한 div -->
    													<div class="my-youtube-wrapper">
        													<!-- 동영상 플레이어 -->
        													<div data-youcover data-id='lOvwwhL7UPg'></div>
														</div>
													</div>
												</div>
    										</div>
										</div>
									</div>
									<div class="tab-pane fade" id="leg">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFou"> O다리 교정 </a></h4>
											</div>
											<div id="collapseFou" class="panel-collapse collapse in">
												<div class="panel-body">
													<!-- 동영상 영역 : 크기 지정을 위한 div -->
    												<div class="my-youtube-wrapper">
        												<!-- 동영상 플레이어 -->
        												<div data-youcover data-id='8a3KwdlNysw'></div>
													</div>
												</div>
											</div>
											<div class="panel-heading">
												<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFiv"> X다리 교정 </a></h4>
											</div>
											<div id="collapseFiv" class="panel-collapse collapse in">
												<div class="panel-body">
													<!-- 동영상 영역 : 크기 지정을 위한 div -->
    												<div class="my-youtube-wrapper">
        												<!-- 동영상 플레이어 -->
        												<div data-youcover data-id='Be-o2hLUt-0'></div>
													</div>
												</div>
											</div>
											<div class="panel-heading">
												<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix"> 반장슬(back knee) 교정 </a></h4>
											</div>
											<div id="collapseSix" class="panel-collapse collapse in">
												<div class="panel-body">
													<!-- 동영상 영역 : 크기 지정을 위한 div -->
    												<div class="my-youtube-wrapper">
        												<!-- 동영상 플레이어 -->
        												<div data-youcover data-id='lu4QOucD0c4'></div>
													</div>
												</div>
											</div>
    									</div>
									</div>
									<div class="tab-pane fade" id="shoulder">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSev"> 라운드 숄더 교정 </a></h4>
											</div>
											<div id="collapseSev" class="panel-collapse collapse in">
												<div class="panel-body">
													<!-- 동영상 영역 : 크기 지정을 위한 div -->
    												<div class="my-youtube-wrapper">
        												<!-- 동영상 플레이어 -->
        												<div data-youcover data-id='qMtyhDDmJ-U'></div>
													</div>
												</div>
											</div>
    									</div>
									</div>
									<div class="tab-pane fade" id="spine">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseNin"> 일자 척추 교정 </a></h4>
											</div>
											<div id="collapseNin" class="panel-collapse collapse in">
												<div class="panel-body">
													<!-- 동영상 영역 : 크기 지정을 위한 div -->
    												<div class="my-youtube-wrapper">
        												<!-- 동영상 플레이어 -->
        												<div data-youcover data-id='NO1mncOrbdI'></div>
													</div>
												</div>
											</div>
											<div class="panel-heading">
												<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTen"> 스웨이백 교정 </a></h4>
											</div>
											<div id="collapseTen" class="panel-collapse collapse in">
												<div class="panel-body">
													<!-- 동영상 영역 : 크기 지정을 위한 div -->
    												<div class="my-youtube-wrapper">
        												<!-- 동영상 플레이어 -->
        												<div data-youcover data-id='hMSc3sglcH4'></div>
													</div>
												</div>
											</div>
    									</div>
									</div>
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
			</div>
		</div>
	</section>
	
	<!-- 동적으로 생성될 HTML의 기본틀 -->
	<script type="text/x-handlebars-template" id="list-item-tmpl">
		<div class='accord-item'>
    		<h4 class='accord-title'><a class="hinfo" href="#content{{num}}" value="{{num}}">{{num}}.{{dutyName}}</a></h4>
    		<div id="content{{num}}" class="content">
				주소 : {{dutyAddr}}<br/>
				<a href="tel:{{dutyTel}}"> 전화번호 : {{dutyTel}}</a>
			</div>
    	</div>
	</script>
	
	<%@ include file="../inc/bottom.jsp" %>
	<script src="../plugins/ajax/ajax_helper.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDAYjCPxyhxx8fGlitbS4U2qMUJwWiY6yk"></script>
	<script src="../plugins/gmaps/gmaps.min.js"></script>
	<script src='../plugins/youcover/youCover.js'></script>
	<script src="../plugins/handlebars/handlebars-v4.3.1.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#erer").slideToggle(100);
		
		var map = new GMaps({
			el: '#gmap',		//지도를 표시할 div의 id값
			lat: 37,		//지도가 표시될 위도
			lng: 127,		//지도가 표시될 경도
			zoom: 9
		});
		$(".login_btn").hover(
			function(e){
				$(this).css("background-color","#5E5E5E").css("color","#ffa500");
			},
			function(e){
				$(this).css("background-color","#5E5E5E").css("color","white");
			}	
		);
		$("#myer").click(
			function(e){
				e.preventDefault();	

				$("#erer").slideDown(100);
				$("#gmap").css("height","600px");
			}
		);
		$("#xx").click(
				function(e){
					e.preventDefault();		
					$("#erer").slideUp(100);
					$("#gmap").css("height","0");
				}
			);
		
		
		$(".gu").click(function(){
			var gu = $(this).val();
			var place =null;
			if (gu == 1) {
				place="(도봉구, 강북구, 성북구, 노원구)";
			} else if (gu==2){
				place="(동대문구, 중랑구, 성동구, 노원구)";
			} else if (gu==3) {
				place="(강동구, 송파구)";
			} else if (gu==4) {
				place="(서초구, 강남구)";
			} else if (gu==5) {
				place="(동작구, 관악구, 금천구)";
			} else if(gu ==6) {
				place="(강서구, 양천구, 영등포구, 구로구)";
			} else if (gu ==7) {
				place="(은평구, 마포구, 서대문구)";
			} else {
				place="(종로구, 중구, 용산구)";
			}
			$(".prog").html( $(this).html() +" 응급실 위치 " + place);
			$.ajax( {
				url:'06_Find_e_i.jsp',
				method:'get',
				data:{data:gu},
				dataType:'json',
				success:function(req){
					var map = new GMaps({
						el: '#gmap',		//지도를 표시할 div의 id값
						lat: req.items[0].wgs84Lat,		//지도가 표시될 위도
						lng: req.items[0].wgs84Lon,		//지도가 표시될 경도
						zoom: 14
					});
					
					$(".accord").empty();
					
					for(var i=0; i <req.items.length; i++){
						var desc = "<h3>";				
						desc += req.items[i].dutyName;
						desc += "</h3><br/>";
						desc += req.items[i].dutyAddr;
					
						//
						req.items[i].num=i+1;
						var template = Handlebars.compile($("#list-item-tmpl").html());
						var html = template(req.items[i]);
						
						//#list에 읽어온 내용을 추가한다.
						$(".accord").append(html);
						
						
						if(i == req.items.length-1){
							$(".accord-title a").click(function(e) {
					            // 링크의 기본 동작(페이지 이동) 방지
								e.preventDefault();

								var target = $(this).attr('href');
								$(target).slideToggle(100);
								$(".content").not($(target)).slideUp(100);
							
								var title = $(this).html();
								var num = title.indexOf(".");
								var key = title.substring(num+1);
								
								$("#gmap").find("div[title='"+key+"']").click();

							});	
							
						}
						
						
						map.addMarker({
						//마우스 오버시 노란박스
							title: req.items[i].dutyName,
							lat: req.items[i].wgs84Lat,
							lng: req.items[i].wgs84Lon,
							icon:{
								url:"../plugins/gmaps/map-marker.png",
								scaledSize: new google.maps.Size(50, 50)
							},
							
							infoWindow:{	//클릭시 표시될 말풍선 <-- HTML코딩 가능함.
								content: desc
							}
						})
					};
				} 		
				});
			}); //end ajax
		$("button[value='6']").click()

	});
	</script>
  </body>
</html>
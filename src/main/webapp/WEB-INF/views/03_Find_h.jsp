<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
	<jsp:include page="./assets/inc/head.jsp" />
    <!-- AjaxHelper -->
	<link rel="stylesheet" type="text.css" href="./assets/plugins/ajax/ajax_helper.css">
	<!-- handlebar plugin -->
	<script src="./assets/plugins/handlebars/handlebars-v4.3.1.js"></script>
	
	<style type="text/css">
		#gmap{	height: 800px;}
     	/* 전체 박스 크기 및 정렬 */
    	.accord { width: auto; margin: auto; height: 800px; overflow:auto;}
	
		.accord-item{
			width:240px;
		}
		.accord-item:first-child > .accord-title {
        	margin-top:0;
        }
        /* 제목 영역의 배경색상과 태두리 */
    	.accord-title {  
    		background: #eeeeee; 
    		border: 1px solid #d5d5d5; 
    		
    		}
		
        /* 제목영역의 링크에 대한 크기, 글자모양 */
    	 .accord-title > a {
    		display: block; width: auto;
    		padding: 10px;
    		color: #222;
    		font-size: 14px; 
    		text-decoration: none
    	} 

        /* 내용영역의 여백, 글자크기, 태두리, 숨김 */
    	.content {
    		padding: 10px 15px;
    		font-size: 12px;
    		border-left: 1px solid #d5d5d5;
    		border-right: 1px solid #d5d5d5;
    		display: none;
    	}
    	.pppp{
    		padding-left :0;
    		padding-right :15px;
    	}
		.input-group{
			width:300px;
		}
		.magam{
			content:'';
			
		}
		.glight{
			float:right;
		}
        /* 마지막 내용 박스의 테두리 보정 */
    	.content:last-child { border-bottom: 1px solid #d5d5d5;	}
	</style>
  </head>
  <body>
	<jsp:include page="./assets/inc/top.jsp" />
	
	<div class="container">
		<h1 class="page-header">병원 검색</h1>
		
		<form class="form-inline">
			<div class="form-group">
				<select id="parent" class="form-control">
					<option value="">---- 진료과목 ----</option>
					<option class="subj" value="03">정신건강의학과</option>
					<option class="subj" value="04">외과</option>
					<option class="subj" value="05">정형외과</option>
					<option class="subj" value="06">신경외과</option>
					<option class="subj" value="08">성형외과</option>
					<option class="subj" value="01">내과</option>
					<option class="subj" value="09">마취통증의학과</option>
					<option class="subj" value="10">산부인과</option>
					<option class="subj" value="11">소아청소년과</option>
					<option class="subj" value="12">안과</option>
					<option class="subj" value="13">이비인후과</option>
					<option class="subj" value="14">피부과</option>
					<option class="subj" value="15">비뇨기과</option>
					<option class="subj" value="21">재활의학과</option>
					<option class="subj" value="49">치과</option>
					<option class="subj" value="80">한의학과</option>
				</select>
				<select class="form-control">
					<option value="110000" >서울특별시</option>
				</select>
				<select  id="child" class="form-control">
					<option class="gu" value="">---- 구를 선택해 주세요 ----</option>
					<option class="gu" value="110001">강남구</option>
					<option class="gu" value="110002">강동구</option>
					<option class="gu" value="110003">강서구</option>
					<option class="gu" value="110004">관악구</option>
					<option class="gu" value="110005">구로구</option>
					<option class="gu" value="110006">도봉구</option>
					<option class="gu" value="110007">동대문구</option>
					<option class="gu" value="110008">동작구</option>
					<option class="gu" value="110009">마포구</option>
					<option class="gu" value="110010">서대믄구</option>
					<option class="gu" value="110011">성동구</option>
					<option class="gu" value="110012">성북구</option>
					<option class="gu" value="110013">영등포구</option>
					<option class="gu" value="110014">용산구</option>
					<option class="gu" value="110015">은평구</option>
					<option class="gu" value="110016">종로구</option>
					<option class="gu" value="110017">중구</option>
					<option class="gu" value="110018">송파구</option>
					<option class="gu" value="110019">중랑구</option>
					<option class="gu" value="110020">양천구</option>
					<option class="gu" value="110021">서초구</option>
					<option class="gu" value="110022">노원구</option>
					<option class="gu" value="110023">광진구</option>
					<option class="gu" value="110024">강북구</option>
					<option class="gu" value="110025">금천구</option>					
				</select>
			</div>
			
			
			<div class="form-group">
				<div class="input-group">
					<input id="finddong" type="text" class="form-control" placeholder="동을 입력해 주세요.">
					<span class="input-group-btn">
						<button  id="gofind" class="btn btn-default" type="submit">검색</button>
					</span>
				</div>
			</div>
		</form>
		<div class="container">
			<div class="prog">	
				<span class="progtext">지역을 선택해 주세요</span>
			</div>
			<div class="row pppp">
				<div class="col-md-9" id="gmap"></div>
				<div class="col-md-3 accord">
					<div class='accord-item'>
    					<h4 class='accord-title'><a href="#content"></a></h4>
	    				<div id="content" class="content">	
							<a href="tel:{{dutyTel}}"> </a>
						</div>
    				</div>
				</div>
			</div>
		</div>
		<div class="container blank" style="height:40px;"></div>
	</div>
	<!-- Ajax로 읽어온 내용을 출력하는데 사용될 HTML 템플릿 -->
	<script id="list-item-tmpl" type="text/x-hendlebars-template">
		<div class='accord-item'>
    		<h4 class='accord-title '  ><a href="#content{{num}}" value="{{num}}" id="cc{{num}}" class="magam">{{yadmNm}}</a></h4>
    		<div id="content{{num}}" class="content">
				주소 : {{addr}}<br/>
				<a href="tel:{{telno}}"> 전화번호 : {{telno}}</a>
				<a href="{{hospUrl}}">{{hospUrl}}</a>
				<hr/>
				<span id="time{{num}}"> </span><hr/>
				시작:{{opentime}} / 종료:{{closetime}} 
			</div>
    	</div>
	</script>
	
	<jsp:include page="./assets/inc/bottom.jsp" />
	<!-- 사용자 정의 스크립트 -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDAYjCPxyhxx8fGlitbS4U2qMUJwWiY6yk"></script>
	<script src="./assets/plugins/gmaps/gmaps.min.js"></script>
	<script src="./assets/plugins/ajax/ajax_helper.js"></script>
	<script type="text/javascript">
	
		$(function(){
			var map = new GMaps({
				el: '#gmap',		//지도를 표시할 div의 id값
				lat: 37,		//지도가 표시될 위도
				lng: 127,		//지도가 표시될 경도
				zoom: 9
			});
			
			/* 드롭다운의 선택 변경 이벤트 */
			$("#gofind").click(function(e){
				e.preventDefault();
				var subj = $("#parent").find("option:selected").val();
				if(subj ==""){
					alert("진료과목을 골라주세요.");
					return;
				}
				var gu = $("#child").find("option:selected").val();
				if(gu ==""){
					alert("구를 골라주세요.");
					return;
				}
				
				var txt = $("#finddong").val();
				if(txt ==""){
					alert("동을 입력해주세요.");
					return;
				}
				$.ajax( {
					url:'findh.do',
					method:'get',
					data:{data:gu, subject:subj, dong:txt},
					dataType:'json',
					error: function(error) {
						//404: Page Not Found\
						//50x: Server Error(웹 프로그램 에러)
						//200, 0: 내용의 형식 에러(JSON, XML)
						console.log(">>에러>>" + error.status);
						
						var error_msg = "[" + error.status + "]" + error.statusText;
						
						var code = parseInt(error.status / 100);
						if (code == 4) {
							error_msg = "잘못된 요청입니다.\n" + error_msg;
						} else if (code == 5) {
							error_msg = "찾고자하는 동을 올바르게 입력하셨나요?. \n" + error_msg;
						} else if (code == 2 || code == 0) {
							error_msg = "서버의 응답이 잘못되었습니다.\n" + error_msg;
						}
						
						alert(error_msg);
						 
					},
					success:function(req){
						console.log(req)
						
						var map = new GMaps({
							el: '#gmap',		//지도를 표시할 div의 id값
							lat: req[0].YPos,		//지도가 표시될 위도
							lng: req[0].XPos,		//지도가 표시될 경도
							zoom: 15
						});
						
						$(".accord").empty();
						
						for(var i=0; i <req.length; i++){
							if(req[i].YPos ==null){
								continue;
							}
							req[i].yadmNm= i+1 + "." + req[i].yadmNm;
							var desc = "<h3>";				
							desc += req[i].yadmNm;
							desc += "</h3><br/>";
							desc += req[i].addr;
							
							req[i].num = i+1;
							
							var template = Handlebars.compile($("#list-item-tmpl").html());
							var html = template(req[i]);
							
							$(".accord").append(html);
							
							var d = new Date();
							var ttt = d.getHours() * 100;
							ttt += d.getMinutes();
							d= i+1;
								if(ttt > req[i].closetime || req[i].opentime > ttt){
									$('#time' + d).html("문닫음!");
								}else if(ttt < req[i].closetime && req[i].opentime < ttt ){
									$('#time' + d).html("영업중!");
								} else{
									$('#time' + d).html("병원 운영시간이 입력되지 않았습니다");
								}

							if($("#time"+ d).html()=="영업중!"){
								$("#cc" + d).append("<img src='./assets/img/glight.png' height='10px' weight='10px' class='glight' />");
								map.addMarker({
									//마우스 오버시 노란박스
										title: req[i].yadmNm,
										lat: req[i].YPos,
										lng: req[i].XPos,
										icon:{
											url:"./assets/plugins/gmaps/map-marker.png",
											scaledSize: new google.maps.Size(50, 50)
										},
										
										infoWindow:{	//클릭시 표시될 말풍선 <-- HTML코딩 가능함.
											content: desc
										}
									})
							} else{
								map.addMarker({
									//마우스 오버시 노란박스
										title: req[i].yadmNm,
										lat: req[i].YPos,
										lng: req[i].XPos,
										icon:{
											url:"./assets/plugins/gmaps/map-marker2.png",
											scaledSize: new google.maps.Size(50, 50)
										},
										
										infoWindow:{	//클릭시 표시될 말풍선 <-- HTML코딩 가능함.
											content: desc
										}
									})
							}
							if(i == req.length-1){
								$(".magam").click(function(e) {
						            // 링크의 기본 동작(페이지 이동) 방지
									e.preventDefault();
									var a=0;
									var target = $(this).attr('href');
									$(target).slideDown(100);
									$(".content").not($(target)).slideUp(100);
								
									var title = $(this).html();
									
									a++;
									$("#gmap").find("div[title='"+ title +"']").click();
									
								});
							 	
								$(document).on('click','#gmap > div > div > div > div > div > div > div',function(e) {
									var aa= $(this).attr('title');
									console.log($(this).attr('title'));
									
									var num = aa.indexOf(".");
									var key = aa.substring(0, num);
									console.log(key);
									
									
									$('.accord').animate({scrollTop : 254}, 0);
									var offset = $("#content" + key).parent('.accord-item').offset();
									console.log(offset);
									$("#content" +key).slideDown(100);
									$(".content").not($("#content" +key)).slideUp(100);
									var cc=$(".accord-item:first-child").offset();
									console.log(cc);
									
									$('.accord').animate({scrollTop : offset.top-100}, 50);
								}); 
							}
							
						};
					} 		
				}); //end ajax	
			});
		});
	</script>
  </body>
</html>
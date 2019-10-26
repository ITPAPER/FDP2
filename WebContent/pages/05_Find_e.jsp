<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <link rel="stylesheet" type="text.css" href="../plugins/ajax/ajax_helper.css">
    <style type="text/css">
    	.line{
    		padding-bottom:20px !important;
    		border-bottom:1px solid #eee ;
    	}
     	#gmap{	height: 800px;}
     	/* 전체 박스 크기 및 정렬 */
    	.accord { width: auto; margin: auto; }
	
		.accord-item{
			width:255px;
		}
        /* 제목 영역의 배경색상과 태두리 */
    	.accord-title {  background: #eeeeee; border: 1px solid #d5d5d5; }

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

        /* 마지막 내용 박스의 테두리 보정 */
    	.content:last-child { border-bottom: 1px solid #d5d5d5;	}
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	<div class='container'>
		<h1 class="line">응급실 찾기</h1>
	</div>
	<br/>
	<div class="container">
		<button class="btn btn-warning gu" value="1">강북 지역</button>
		<button class="btn btn-warning gu" value="2">동서울 지역</button>
		<button class="btn btn-warning gu" value="3">동남 지역</button>
		<button class="btn btn-warning gu" value="4">강남 지역</button>
		<button class="btn btn-warning gu" value="5">남서울 지역</button>
		<button class="btn btn-warning gu" value="6">서남 지역</button>
		<button class="btn btn-warning gu" value="7">서서울 지역</button>
		<button class="btn btn-warning gu" value="8">도심 지역</button>
	</div>
	<div class="container">
		<div class="prog">
			<span class="progtext">지역을 선택해 주세요</span>
		</div>
		<div class="row">
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
	
	 
	
	
	<!-- 동적으로 생성될 HTML의 기본틀 -->
	<script type="text/x-handlebars-template" id="list-item-tmpl">
		<div class='accord-item'>
    		<h4 class='accord-title'><a href="#content{{num}}" value="{{num}}">{{num}}.{{dutyName}}</a></h4>
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
	<script src="../plugins/handlebars/handlebars-v4.3.1.js"></script>
	<script type="text/javascript">
    $(function(){
    	var map = new GMaps({
			el: '#gmap',		//지도를 표시할 div의 id값
			lat: 37,		//지도가 표시될 위도
			lng: 127,		//지도가 표시될 경도
			zoom: 9
		});
    	
    	
    	
    	
    	
    	$(".gu").click(function(){
			var gu = $(this).val();
			$(".prog").html( $(this).html()+ " 응급실 위치");
			$.ajax( {
				url:'../api/eroom.do',
				method:'get',
				data:{data:gu},
				dataType:'json',
				success:function(req){
					
					var map = new GMaps({
						el: '#gmap',		//지도를 표시할 div의 id값
						lat: req.items[0].lon,		//지도가 표시될 위도
						lng: req.items[0].lan,		//지도가 표시될 경도
						zoom: 14
					});
					
					$(".accord").empty();
					
					for(var i=0; i <req.items.length; i++){
						var desc = "<h3>";				
						desc += req.items[i].dutyName;
						desc += "</h3><br/>";
						desc += req.items[i].dutyAddr;
					
						//
						req.items[i].num=i;
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
							lat: req.items[i].lon,
							lng: req.items[i].lan,
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
			
    	
    	
			
   	});
   
    </script>
  </body>
</html>
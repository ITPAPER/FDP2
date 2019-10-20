<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <link rel="stylesheet" type="text.css" href="../plugins/ajax/ajax_helper.css">
    <style type="text/css">
     	#gmap{	height: 800px;}
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
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
		<div class="prog"></div>
		<div class="row">
			<div class="col-md-9" id="gmap"></div>
			<div class="col-md-3 panel-group" id="accordion">
				
			</div>
		</div>
		
	</div>
	
	 
	
	
	<!-- 동적으로 생성될 HTML의 기본틀 -->
	<script type="text/x-handlebars-template" id="list-item-tmpl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse{{num}}"> {{num}}. {{dutyName}} </a></h4>
			</div>
			<div id="collapse{{num}}" class="panel-collapse collapse in">
				<div class="panel-body">
					{{dutyAddr}}
				</div>
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
					
					$("#accordion").empty();
					
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
						$("#accordion").append(html);
						//
						
						
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
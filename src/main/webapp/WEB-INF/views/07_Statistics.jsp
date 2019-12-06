<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!doctype html>
<html lang="ko">
<head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />
     <link rel="stylesheet" type="text.css" href="./assets/plugins/ajax/ajax_helper.css"> 
     <!-- handlebar plugin -->
	
     
     <style type="text/css">
     .container {
         position: relative;
         /* text-align: center; */
      }
       
       #title {
         position: absolute;
         top: 30px;
      }
      
      #subtitle {
      	position: absolute;
      	top: 80px;
      }
      
      .dislist {
      	 /* diaplay: inline-block; */
         position: absolute !important;
         top: -40px;
         left: 0 !important;
         font-weight: bold;
         margin-top: 0;
         width: 150px;
      }
      
      .content {
      	 display: block;
         position: absolute;
         width: 1000px;
      }
      
      #right {
     	float: right;
     	width: 500px;
     } 
      
      #content1 { 
      	top: 170px 
      }
      
      #mytab1 {
      	width: 500px;
      	position: relative;
      	top: 20px;
      }
      
      .a {
      	line-height: 1.5em;
      }
      
      .tab-content {
      	position: absolute;
      	top: 300px;
      	border: 1px solid black;
      	height: 1000px;
      	width: 1170px;
      }
      
      #dept {
      	position: relative;
      	top: 100px;
      }
      
      #chartname1 {
      	position: relative;
      	left: 100px;
      	top: 50px;
      }
      
      #chartname2 {
      	position: relative;
      	left: 620px;
      	top:20px;
      }

     </style>
     
</head>

 <body>
 <jsp:include page="./assets/inc/top.jsp" />
   <!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
   <div class="container" style="min-height:1500px;">
   	  <!-- 연습페이지 -->
   	  <button onclick="location.href='07_1_Statistics.do'">지역별질병자료보기</button>
   
      <h3 id="title"><strong>국민 관심 보건의료 통계자료</strong></h3>
      <h5 id="subtitle" style="font-style: italic; color: #333;">- 조회를 원하시는 자료의 버튼을 클릭해주세요!</h5>
      
     <div id="left"> 
      <!-- 질병 1 -->
      <div class="content" id="content1">
      	<div>
			<select name="disName" id="disName" class="form-control dislist" style="width: 170px; text-align:center; font-weight:normal;">
	        	<option class="a" value="">-------- 질병명 -------</option>
	        	<option class="a" value="1">감기</option>
	        	<option class="a" value="2">고혈압</option>
	        	<option class="a" value="3">관절병증</option>
	        	<option class="a" value="4">비염</option>
	        	<option class="a" value="5">알레르기성 결막염</option>
	        	<option class="a" value="6">알레르기 질환</option>
	        	<option class="a" value="7">위식도 역류질환</option>
	        	<option class="a" value="8">척추질환</option>
	        	<option class="a" value="9">치아우식증</option>
	        	<option class="a" value="10">치주질환 및 치은염</option>
      		</select>
		</div>
		
		<div id="result"></div>
     </div> 
      	
         <!-- 탭 페이지 구성(단일페이지) -->
         <div class="tab-content">
         	<div id="chartname1"></div>
         	<div id="chartname2"></div>
            <div role="tabpanel1" class="tab-pane fade active in" id="dept">
            </div>
         </div>
      </div>   
	</div>      
   <script id="item_tmpl" type="text/x-handlebars-template">
         <ul class="nav nav-tabs" id="mytab1">
            <li><a href="#dept" data-toggle="tab" data-deptno="1" id="ct11">{{gender}}</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="2" id="ct12">{{age}}</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="3" id="ct13">{{season}}</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="4" id="ct14">{{region}}</a></li>
         </ul>
		</script>
   <jsp:include page="./assets/inc/bottom.jsp" />
   <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
   
   <script src="./assets/plugins/ajax/ajax_helper.js"></script> 
   
   <!-- Resources -->
   <script src="https://www.amcharts.com/lib/4/core.js"></script>
   <script src="https://www.amcharts.com/lib/4/charts.js"></script>
   <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
   <script src="./assets/plugins/handlebars/handlebars-v4.3.1.js"></script>
   <script type="text/javascript">
   
   
   
	$(function() {
		$("#disName").change(function() {
			$("#result").empty();
			var choice = $(this).find("option:selected").val();
			if(!choice) {
				return false;
			}
			 $.get('abc.do', {disNo:choice}, function(req) {
				var template = Handlebars.compile($("#item_tmpl").html());
				var html = template(req); 
				console.log(req);
				$("#result").append(html);
				
				$("#ct11").click(function(e) {
			          $.ajax({
			             /** ajax 기본 옵션 */
			             url: './assets/api/chart1.do',// 읽어들일 파일의 경로
			             dataType: 'html',	//읽어올 내용 형식(html, xml, json)
			             method: 'get',          // 통신방법 (get(기본값), post)
			             data: {},             // 접속대상에게 전달할 파라미터
			             // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
			             success: function(req) {
			                console.log(">> 성공!!!! >> " + req);
			                // 준비된 요소에게 읽어온 내용을 출력한다.
			                $("#dept").html(req);
			             }
			          });//end $.ajax
			       }); // end #ct11 click
			       
			       $("#ct12").click(function(e) {

			    	   $.ajax({
			              /** ajax 기본 옵션 */
			              url: './assets/api/chart10.do',// 읽어들일 파일의 경로
			              dataType: 'html',	//읽어올 내용 형식(html, xml, json)
				          method: 'get',          // 통신방법 (get(기본값), post)
				          data: {},             // 접속대상에게 전달할 파라미터
			              // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
			              success: function(req) {
			                 console.log(">> 성공!!!! >> " + req);
			                 // 준비된 요소에게 읽어온 내용을 출력한다.
			                 $("#dept").html(req);
			              }
			           });
			        }); // end #ct12 click
			        
			        $("#ct13").click(function(e) {
			           $.ajax({
			              /** ajax 기본 옵션 */
			              url: './assets/api/chart3.do',// 읽어들일 파일의 경로
			              dataType: 'html',	//읽어올 내용 형식(html, xml, json)
				          method: 'get',          // 통신방법 (get(기본값), post)
				          data: {},             // 접속대상에게 전달할 파라미터
			              // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
			              success: function(req) {
			                 console.log(">> 성공!!!! >> " + req);
			                 // 준비된 요소에게 읽어온 내용을 출력한다.
			                 $("#dept").html(req);
			              },
			              // 통신 실패시 호출될 함수 (파라미터는 에러내용)
			              error: function(error) {
			                 // 404 -> Page Not Found
			                 // 50x -> Server Error(웹 프로그램 에러)
			                 // 200, 0 -> 내용의 형식 에러(JSON,XML)
			                 console.log(">> 에러!!!! >> " + error.status);
			              }
			           });
			        }); // end #ct13 click
			        
			        $("#ct14").click(function(e) {
					   var chart1 = "<h4><${disName}환자 수></h4>"
					   $("#chartname1").html(chart1);
					       
					   var chart2 = "<h4><${disName}진료비용 (단위:1,000원)></h4>"
					   $("#chartname2").html(chart2);
					       
			           $.ajax({

			              /** ajax 기본 옵션 */
			              url: './assets/api/chart10.do',// 읽어들일 파일의 경로
			              dataType: 'html',	//읽어올 내용 형식(html, xml, json)
				          method: 'get',          // 통신방법 (get(기본값), post)
				          data: {},             // 접속대상에게 전달할 파라미터
			              // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
			              success: function(req) {
			                 console.log(">> 성공!!!! >> " + req);
			                 // 준비된 요소에게 읽어온 내용을 출력한다.
			                 $("#dept").html(req);
			              }
			           });
			        }); // end #ct14 click
			}) 
		})
	})
      
   
   </script>
   
</body>
</html>
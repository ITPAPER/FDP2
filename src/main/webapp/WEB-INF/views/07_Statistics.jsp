<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!doctype html>
<html lang="ko">
<head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />
     <link rel="stylesheet" type="text.css" href="./assets/plugins/ajax/ajax_helper.css"> 
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
      
      .charttitle {
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
      	height: 900px;
      	width: 1170px;
      }
      
      #dept{
      	position: relative;
      	top: 100px;
      }
      #chartdiv {
		  width: 400px !important;
		  height: 800px;
		  left: 40px;
		  top:50px;
		  position:absolute;
		}
		
		#chartdiv1 {
		  width: 500px;
		  height: 300px;
		  left: 600px;
		  top:50px;
		  position:absolute;
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
      
      <!-- 질병명 선택 드롭다운 -->
      <!-- <button class="charttitle btn btn-warning">감기</button> -->
      
      	<div>
			<select name="addr1" id="addr1" class="form-control charttitle" style="width: 170px; text-align:center; font-weight:normal;">
	        	<option class="a" value="">-------- 질병명 -------</option>
	        	<option class="a" value="">감기</option>
	        	<option class="a" value="">고혈압</option>
	        	<option class="a" value="">관절병증</option>
	        	<option class="a" value="">비염</option>
	        	<option class="a" value="">알레르기성 결막염</option>
	        	<option class="a" value="">알레르기 질환</option>
	        	<option class="a" value="">위식도 역류질환</option>
	        	<option class="a" value="">척추질환</option>
	        	<option class="a" value="">치아우식증</option>
	        	<option class="a" value="">치주질환 및 치은염</option>
      		</select>
		</div>
      
      	<!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" id="mytab1">
            <li><a href="#dept" data-toggle="tab" data-deptno="1" id="ct11">성별</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="2" id="ct12">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="3" id="ct13">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="4" id="ct14">지역별</a></li>
         </ul>
     </div>    
     
      
         <!-- 탭 페이지 구성(단일페이지) -->
         <div class="tab-content">
            <div role="tabpanel1" class="tab-pane fade active in" id="dept">
               <div id="chartdiv"></div>
               <div id="chartdiv1"></div>
            </div>
         </div>
      </div>   
	</div>      
   
   <jsp:include page="./assets/inc/bottom.jsp" />
   <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
   
   <script src="./assets/plugins/ajax/ajax_helper2.js"></script> 
   
   <!-- Resources -->
   <script src="https://www.amcharts.com/lib/4/core.js"></script>
   <script src="https://www.amcharts.com/lib/4/charts.js"></script>
   <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
   
   <script type="text/javascript">
   console.log(${region[1]})
   console.log(${arrayStr})
   //console.log(${arrayStr})
   
   
   
   $(function() {
       $("#ct11").click(function(e) {
          $.ajax({
             /** ajax 기본 옵션 */
             url: './assets/api/chart9.do',// 읽어들일 파일의 경로
 
             // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
             success: function(req) {
                console.log(">> 성공!!!! >> " + req);
                // 준비된 요소에게 읽어온 내용을 출력한다.
                $("#dept").append(req);
             }
          });//end $.ajax
       }); // end #ct11 click
       
       $("#ct12").click(function(e) {
          $.ajax({
             /** ajax 기본 옵션 */
             url: './assets/api/chart10.do',// 읽어들일 파일의 경로
             
             // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
             success: function(req) {
                console.log(">> 성공!!!! >> " + req);
                // 준비된 요소에게 읽어온 내용을 출력한다.
                $("#dept").append(req);
             }
          });
       }); // end #ct12 click
       
       $("#ct13").click(function(e) {
          $.ajax({
             /** ajax 기본 옵션 */
             url: './assets/api/chart3.do',// 읽어들일 파일의 경로
 
             // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
             success: function(req) {
                console.log(">> 성공!!!! >> " + req);
                // 준비된 요소에게 읽어온 내용을 출력한다.
                $("#dept").append(req);
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
          $.ajax({
             /** ajax 기본 옵션 */
             url: './assets/api/chart1.do',// 읽어들일 파일의 경로
 
             // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
             success: function(req) {
                console.log(">> 성공!!!! >> " + req);
                // 준비된 요소에게 읽어온 내용을 출력한다.
                $("#dept").append(req);
             }
          });
       }); // end #ct14 click
    });
   
   </script>
   
</body>
</html>
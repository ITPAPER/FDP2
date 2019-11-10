<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!doctype html>
<html lang="ko">
  <head>
    <%@ include file="../inc/head.jsp" %>
    <style type="text/css">
       .container {
         position: relative;
         text-align: center;
      }
       
       .title {
         position: absolute;
         top: 30px;
         left: 85px;
      }
      
	  /* Chart1 CSS */
      .charttitle1 {
         diaplay: inline-block;
         position: absolute;
         top: 100px;
         left: 85px;
         color: red;
      }
      
      #content1 {
         display: block;
         position: absolute;
         top: 140px !important; 
         width: 1000px;
         margin-left: 85px;
      }
      
       /* Chart2 CSS */
      .charttitle2 {
         diaplay: inline-block;
         position: absolute;
         top: 210px;
         left: 85px;
         color: red;
      }
      
       #content2 {
         display: block;
         position: absolute;
         top: 250px !important; 
         width: 1000px;
         margin-left: 85px;
      }
      
      /* Chart3 CSS */
      .charttitle3 {
         diaplay: inline-block;
         position: absolute;
         top: 320px;
         left: 85px;
         color: red;
      }
      
       #content3 {
         display: block;
         position: absolute;
         top: 360px !important; 
         width: 1000px;
         margin-left: 85px;
      }
      
      /* Chart4 CSS */
      .charttitle4 {
         diaplay: inline-block;
         position: absolute;
         top: 430px;
         left: 85px;
         color: red;
      }
      
       #content4 {
         display: block;
         position: absolute;
         top: 470px !important; 
         width: 1000px;
         margin-left: 85px;
      }
     
      /* Chart5 CSS */
      .charttitle5 {
         diaplay: inline-block;
         position: absolute;
         top: 540px;
         left: 85px;
         color: red;
      }
      
       #content5 {
         display: block;
         position: absolute;
         top: 580px !important; 
         width: 1000px;
         margin-left: 85px;
      }
      .nav {
      	width: 500px;
      }
      
      #chartdiv {
      	width: 1100px !important;
      	left: 30px;
      }
      
      .tab-content {
      	position: absolute;
      	top: 700px;
      }
      
    </style>
     
     <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
  </head>

  <body>
   <%@ include file="../inc/top.jsp" %>
   
   <!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
   <div class="container" style="min-height:2000px;">
      <h3 class="title"><strong>국민 관심 보건의료 통계자료</strong></h3>
      
      <!-- Disease 1 -->
      <h4 class="charttitle1">[Disease 1]</h4>
      <div id="content1">
      	<!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" id="mytab1">
            <li class="active"><a href="#dept1" data-toggle="tab" data-deptno="1" id="ct11">Chart1</a></li>
            <li><a href="#dept1" data-toggle="tab" data-deptno="2" id="ct12">Chart2</a></li>
            <li><a href="#dept1" data-toggle="tab" data-deptno="3" id="ct13">Chart3</a></li>
            <li><a href="#dept1" data-toggle="tab" data-deptno="4" id="ct14">Chart4</a></li>
         </ul>
     </div>    
     
      <!-- Disease 2 -->
      <h4 class="charttitle2">[Disease 2]</h4>
      <div id="content2">
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept1" data-toggle="tab" id="ct21">Chart1</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct22">Chart2</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct23">Chart3</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct24">Chart4</a></li>
         </ul>
      </div>  
         
      <!-- Disease 3 -->
      <h4 class="charttitle3">[Disease 3]</h4>
      <div id="content3">
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept1" data-toggle="tab" id="ct21">Chart1</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct22">Chart2</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct23">Chart3</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct24">Chart4</a></li>
         </ul>
      </div>  
         
      <!-- Disease 4 -->
      <h4 class="charttitle4">[Disease 4]</h4>
      <div id="content4">
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept1" data-toggle="tab" id="ct21">Chart1</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct22">Chart2</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct23">Chart3</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct24">Chart4</a></li>
         </ul>
      </div>     
      
      <!-- Disease 5 -->
      <h4 class="charttitle5">[Disease 5]</h4>
      <div id="content5">
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept1" data-toggle="tab" id="ct21">Chart1</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct22">Chart2</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct23">Chart3</a></li>
            <li><a href="#dept1" data-toggle="tab" id="ct24">Chart4</a></li>
         </ul>
      </div>  
      
         <!-- 탭 페이지 구성(단일페이지) -->
         <div class="tab-content">
            <div role="tabpanel1" class="tab-pane fade active in" id="dept1">
               <div id="chartdiv"></div>
            </div>
         </div>
      </div>   
      
         
      
   </div>
   
   <%@ include file="../inc/bottom.jsp" %>
   
   <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
   <script src="../plugins/ajax/ajax_helper2.js"></script> 
   
   <!-- Resources -->
   <script src="https://www.amcharts.com/lib/4/core.js"></script>
   <script src="https://www.amcharts.com/lib/4/charts.js"></script>
   <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
   
   <!-- Javascript -->
   <script type="text/javascript">
      $(function() {
         $("#ct11").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart1.jsp',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept1").append(req);
               }
            });//end $.ajax
         }); // end #ct11 click
         
         $("#ct12").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart2.jsp',// 읽어들일 파일의 경로
               
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept1").append(req);
               }
            });
         }); // end #ct12 click
         
         $("#ct13").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart3.jsp',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept1").append(req);
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
               url: '../api/chart4.jsp',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept1").append(req);
               }
            });
         }); // end #ct14 click
         
         $("#ct21").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart1.jsp',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept1").append(req);
                }
             });//end $.ajax
          }); // end #ct11 click
          
          $("#ct22").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept1").append(req);
                }
             });
          }); // end #ct12 click
          
          $("#ct23").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart3.jsp',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept1").append(req);
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
          
          $("#ct24").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart4.jsp',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept1").append(req);
                }
             });
          }); // end #ct14 click
      });
   </script>
  </body>
</html>
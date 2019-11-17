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
         text-align: center;
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
      	 diaplay: inline-block;
         position: absolute;
         top: -40px;
         left: 0;
         font-weight: bold;
         margin-top: 0;
         width: 100px;
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
      
       #content2 { 
       	top: 280px 
       }
      
       #content3 {
       	 top: 390px 
       }
      
       #content4 { 
       	  top: 500px 
       }
     
       #content5 {
         top: 610px !important; 
      }
      
      #content6 {
         top: 170px !important; 
      }
      
       #content7 {
         top: 280px !important; 
      }
      
       #content8 {
         top: 390px !important; 
      }
      
       #content9 {
         top: 500px !important; 
      }
     
       #content10 {
         top: 610px !important; 
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
      	top: 800px;
      }
     </style>
     
</head>

 <body>
 <jsp:include page="./assets/inc/top.jsp" />
   <!-- 자바스크립트 차트 라이브러리 amCharts4 사용 예시 -->
   <div class="container" style="min-height:1700px;">
      <h3 id="title"><strong>국민 관심 보건의료 통계자료</strong></h3>
      <h5 id="subtitle" style="font-style: italic; color: #333;">- 조회를 원하시는 자료의 버튼을 클릭해주세요!</h5>
      
     <div id="left"> 
      <!-- 질병 1 -->
      <div class="content" id="content1">
      <button class="charttitle btn btn-warning">질병 1</button>
      	<!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" id="mytab1">
            <li class="active"><a href="#dept" data-toggle="tab" data-deptno="1" id="ct11">성별</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="2" id="ct12">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="3" id="ct13">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" data-deptno="4" id="ct14">지역별</a></li>
         </ul>
     </div>    
     
      <!-- 질병 2 -->
      <div class="content" id="content2">
      <button class="charttitle btn btn-warning">질병 2</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct21">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct22">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct23">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct24">지역별</a></li>
         </ul>
      </div>  
         
      <!-- 질병 3 -->
      <div class="content" id="content3">
      <button class="charttitle btn btn-warning">질병 3</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct31">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct32">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct33">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct34">지역별</a></li>
         </ul>
      </div>  
         
      <!-- 질병 4 -->
      <div class="content" id="content4">
      <button class="charttitle btn btn-warning">질병 4</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct41">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct42">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct43">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct44">지역별</a></li>
         </ul>
      </div>     
      
      <!-- 질병 5 -->
      <div class="content" id="content5">
      <button class="charttitle btn btn-warning">질병 5</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct51">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct52">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct53">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct54">지역별</a></li>
         </ul>
      </div> 
     </div>  
     
  
      <div id="right"> 
      <!-- 질병 1 -->
      <div class="content" id="content6">
      <button class="charttitle btn btn-warning">질병 6</button>
      	<!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" id="mytab1">
            <li class="active"><a href="#dept" data-toggle="tab" data-deptno="1" id="ct11">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct62">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct63">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct64">지역별</a></li>
         </ul>
     </div>    
     
      <!-- 질병 2 -->
      <div class="content" id="content7">
      <button class="charttitle btn btn-warning">질병 7</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct71">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct72">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct73">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct74">지역별</a></li>
         </ul>
      </div>  
         
      <!-- 질병 3 -->
      <div class="content" id="content8">
      <button class="charttitle btn btn-warning">질병 8</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct81">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct82">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct83">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct84">지역별</a></li>
         </ul>
      </div>  
         
      <!-- 질병 4 -->
      <div class="content" id="content9">
      <button class="charttitle btn btn-warning">질병 9</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct91">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct92">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct93">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct94">지역별</a></li>
         </ul>
      </div>     
      
      <!-- 질병 5 -->
      <div class="content" id="content10">
      <button class="charttitle btn btn-warning">질병 10</button>
     	 <!-- 탭 버튼 구성 -->
         <ul class="nav nav-tabs" >
            <li><a href="#dept" data-toggle="tab" id="ct101">성별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct102">연령별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct103">계절별</a></li>
            <li><a href="#dept" data-toggle="tab" id="ct104">지역별</a></li>
         </ul>
      </div> 
     </div>  
      
         <!-- 탭 페이지 구성(단일페이지) -->
         <div class="tab-content">
            <div role="tabpanel1" class="tab-pane fade active in" id="dept">
               <div id="chartdiv"></div>
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
   $(function() {
       $("#ct11").click(function(e) {
          $.ajax({
             /** ajax 기본 옵션 */
             url: '../assets/api/chart1.do',// 읽어들일 파일의 경로
 
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
             url: '../assets/api/chart2.do',// 읽어들일 파일의 경로
             
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
             url: './assets/api/chart4.do',// 읽어들일 파일의 경로
 
             // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
             success: function(req) {
                console.log(">> 성공!!!! >> " + req);
                // 준비된 요소에게 읽어온 내용을 출력한다.
                $("#dept").append(req);
             }
          });
       }); // end #ct14 click
       
       $("#ct21").click(function(e) {
           $.ajax({
              /** ajax 기본 옵션 */
              url: './assets/api/chart1.do',// 읽어들일 파일의 경로
  
              // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
              success: function(req) {
                 console.log(">> 성공!!!! >> " + req);
                 // 준비된 요소에게 읽어온 내용을 출력한다.
                 $("#dept").append(req);
              }
           });//end $.ajax
        }); // end #ct11 click
        
        $("#ct22").click(function(e) {
           $.ajax({
              /** ajax 기본 옵션 */
              url: './assets/api/chart2.do',// 읽어들일 파일의 경로
              
              // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
              success: function(req) {
                 console.log(">> 성공!!!! >> " + req);
                 // 준비된 요소에게 읽어온 내용을 출력한다.
                 $("#dept").append(req);
              }
           });
        }); // end #ct12 click
        
        $("#ct23").click(function(e) {
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
        
        $("#ct24").click(function(e) {
           $.ajax({
              /** ajax 기본 옵션 */
              url: './assets/api/chart4.do',// 읽어들일 파일의 경로
  
              // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
              success: function(req) {
                 console.log(">> 성공!!!! >> " + req);
                 // 준비된 요소에게 읽어온 내용을 출력한다.
                 $("#dept").append(req);
              }
           });
        }); // end #ct14 click
        
        $("#ct31").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: './assets/api/chart1.do',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               }
            });//end $.ajax
         }); // end #ct11 click
         
         $("#ct32").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: './assets/api/chart2.do',// 읽어들일 파일의 경로
               
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               }
            });
         }); // end #ct12 click
         
         $("#ct33").click(function(e) {
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
         
         $("#ct34").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: './assets/api/chart4.do',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               }
            });
         }); // end #ct14 click
         
         $("#ct41").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: './assets/api/chart1.do',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                }
             });//end $.ajax
          }); // end #ct11 click
          
          $("#ct42").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                }
             });
          }); // end #ct12 click
          
          $("#ct43").click(function(e) {
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
          
          $("#ct44").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: './assets/api/chart4.do',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                }
             });
          }); // end #ct14 click
          
          $("#ct51").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: './assets/api/chart1.do',// 읽어들일 파일의 경로
     
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 }
              });//end $.ajax
           }); // end #ct11 click
           
           $("#ct52").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                 
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 }
              });
           }); // end #ct12 click
           
           $("#ct53").click(function(e) {
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
           
           $("#ct54").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: './assets/api/chart4.do',// 읽어들일 파일의 경로
     
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 }
              });
           }); // end #ct14 click
           
           $("#ct61").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: './assets/api/chart1.do',// 읽어들일 파일의 경로
      
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  }
               });//end $.ajax
            }); // end #ct11 click
            
            $("#ct62").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                  
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  }
               });
            }); // end #ct12 click
            
            $("#ct63").click(function(e) {
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
            
            $("#ct64").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: './assets/api/chart4.do',// 읽어들일 파일의 경로
      
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  }
               });
            }); // end #ct14 click
            
            $("#ct71").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: './assets/api/chart1.do',// 읽어들일 파일의 경로
       
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   }
                });//end $.ajax
             }); // end #ct11 click
             
             $("#ct72").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                   
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   }
                });
             }); // end #ct12 click
             
             $("#ct73").click(function(e) {
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
             
             $("#ct74").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: './assets/api/chart4.do',// 읽어들일 파일의 경로
       
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   }
                });
             }); // end #ct14 click
             
             $("#ct81").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: './assets/api/chart1.do',// 읽어들일 파일의 경로
        
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    }
                 });//end $.ajax
              }); // end #ct11 click
              
              $("#ct82").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                    
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    }
                 });
              }); // end #ct12 click
              
              $("#ct83").click(function(e) {
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
              
              $("#ct84").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: './assets/api/chart4.do',// 읽어들일 파일의 경로
        
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    }
                 });
              }); // end #ct14 click
              
              $("#ct91").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: './assets/api/chart1.do',// 읽어들일 파일의 경로
         
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     }
                  });//end $.ajax
               }); // end #ct11 click
               
               $("#ct92").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                     
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     }
                  });
               }); // end #ct12 click
               
               $("#ct93").click(function(e) {
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
               
               $("#ct94").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: './assets/api/chart4.do',// 읽어들일 파일의 경로
         
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     }
                  });
               }); // end #ct14 click
               
               $("#ct101").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: './assets/api/chart1.do',// 읽어들일 파일의 경로
          
                      // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                      success: function(req) {
                         console.log(">> 성공!!!! >> " + req);
                         // 준비된 요소에게 읽어온 내용을 출력한다.
                         $("#dept").append(req);
                      }
                   });//end $.ajax
                }); // end #ct11 click
                
                $("#ct102").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: './assets/api/chart2.do',// 읽어들일 파일의 경로
                      
                      // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                      success: function(req) {
                         console.log(">> 성공!!!! >> " + req);
                         // 준비된 요소에게 읽어온 내용을 출력한다.
                         $("#dept").append(req);
                      }
                   });
                }); // end #ct12 click
                
                $("#ct103").click(function(e) {
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
                
                $("#ct104").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: './assets/api/chart4.do',// 읽어들일 파일의 경로
          
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
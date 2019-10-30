<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
     <link rel="stylesheet" href="../plugins/animate/animate.css" />
    <%@ include file="../inc/head.jsp" %>
    <style>

        .bbox {
            width: 1170px;
            margin: auto;
            min-height: 1000px;
        }

        .mybox {
            width: auto;
            height: 200px;
            visibility: hidden;
        }
        .box1 {
            width: 400px;
            height: 300px;
            font-weight: bold;
            font-size: 20px;
            color: white;
            background-color: #ffa500;
            text-align: center;
            line-height: 200px;
            position: absolute;
            top: 80%;
            left: 50%;
            margin-top: -100px;
            border-radius: 10px;
            visibility: hidden;
        }

        .box-left {
            margin-left: -450px;
        }

        .box-right {
            margin-left: 50px;
        }

        /* --box css 끝--*/
        * {
            padding: 0;
            margin: 0;
        }
        ul ,ol {
            list-style: none;
        }

        .top {
            height: 50px;
            background: #5BC0DE;
            border-radius: 10px 10px 0 0;
        }

        .top .btn {
            position: absolute;
            top: 7px;
            right: 7px;
        }

        .top h4 {
            position: absolute;
            top: 5px;
            left: 7px;
        }

        .loog {
            margin: auto;
            width: 350px;
            height: 50px;
            font-weight: bold;
            font-size: 20px; 
        } 

        tbody tr td {
            height: 50px;   
        }

        hr {
            border-top: 5px solid #eee;
        }
        
		.modal-body > .graph {
			background: #ccc;
			min-height: 400px;	
		}
		
		.modal-body .graph span {
			dislplay: block;
		
		}
		.modal-body .graph {
			text-align: center;
			
		}
		.modal-body .graph img {
			width: 70%;
		}
    </style>
  </head>
  <body>
	<%@ include file="../inc/top.jsp" %>
	
	<div class="bbox">
        <div id="box2" class="header mybox">
            <h1>관리자 페이지</h1>
            <h4>회원관리 및 사이트 정보수정이 가능합니다.</h4>
            <hr />
        </div>
    <div class="page" id="page">
        <div class="box1 box-left" style="position: absolute; top: 40%;" >
            <div class="top">
                <h4>Find Doctor를 더 안전하고 편리하게 관리하세요.</h4>
            </div>
            <button type="button" class="btn btn-primary loog" 
                onclick = "location.href ='22_Login_s.jsp'">
                Find Doctor 관리자 로그인 
            </button>
        </div>
        <div class="box1 box-right"style="position: absolute; top: 40%;" >
            <div class="top">
                <h4 class="pull-left">게시판 관리</h4>
                <button type="button" class="btn btn-primary pull-right"
                    onclick = "location.href ='23_Notice_board_s.jsp'">
                    더보기
                </button>
            </div>
            <table class="table table-hover">
                <tbody>
                    <tr>
                        <td class="text-center">1</td>
                        <td class="text-center">게시물 삭제</td>                     
                    </tr>
                    <tr>
                        <td class="text-center">2</td>
                        <td class="text-center">게시물 옮기기</td>                        
                    </tr>
                    <tr>
                        <td class="text-center">3</td>
                        <td class="text-center">게시물 수정</td> 
                    </tr>
                    <tr>
                        <td class="text-center">4</td>
                        <td class="text-center">뭐하지</td>    
                    </tr>
                    <tr>
                        <td class="text-center">5</td>
                        <td class="text-center">뭐넣을까?</td>  
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="box1 box-left"  >
            <div class="top">
                <h4 class="pull-left">누적 접속회원 통계(modal)</h4>
                <button type="button" class="btn btn-primary pull-right">
                    더보기
                </button>
            </div>
            <table class="table table-hover">
                <tbody>
                    <tr data-toggle="modal" data-target="#myModal">
                        <td class="text-center">1</td>
                        <td class="text-center">연령별 통계</td>                     
                    </tr>
                    <tr  data-toggle="modal" data-target="#myModal">
                        <td class="text-center">2</td>
                        <td class="text-center">나이별 통계</td>                     
                    </tr>
                    <tr  data-toggle="modal" data-target="#myModal">
                        <td class="text-center">3</td>
                        <td class="text-center">지역별 통계</td> 
                    </tr>
                    <tr  data-toggle="modal" data-target="#myModal">
                        <td class="text-center">4</td>
                        <td class="text-center">계절별 통계</td> 
                    </tr>
                    <tr  data-toggle="modal" data-target="#myModal">
                        <td class="text-center">5</td>
                        <td class="text-center">통계</td> 
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="box1 box-right" >
            <div class="top">
                <h4 class="pull-left">회원 관리</h4>
                <button type="button" class="btn btn-primary pull-right"
                    onclick = "location.href ='28_User_stasis.jsp'">
                    더보기
                </button>
            </div>
            <table class="table table-hover">
                <tbody>
                    <tr>
                        <td class="text-center">1</td>
                        <td class="text-center">일반 회원정보 열람</td>                     
                    </tr>
                    <tr>
                        <td class="text-center">2</td>
                        <td class="text-center">의사 회원정보 열람</td>                     
                    </tr>
                    <tr>
                        <td class="text-center">3</td>
                        <td class="text-center">신고회원 조회</td>    
                    </tr>
                    <tr>
                        <td class="text-center">4</td>
                        <td class="text-center">대기회원 조회</td>    
                    </tr>
                    <tr>
                        <td class="text-center">5</td>
                        <td class="text-center">회원 강퇴</td>  
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    
    <!-- .modal -->
		<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- .modal-dialog -->
			<div class="modal-dialog">
				<!-- .modal-content -->
				<div class="modal-content">
					<!-- 제목 -->
					<div class="modal-header">
						<!-- 닫기버튼 -->
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">Modal 써보기</h4>
					</div>
					<!-- 내용 -->
					<div class="modal-body">
						<div class="graph-body">
							<div class="graph">
							<span><img src="../img/chart.png"></span>
							<span>그래프1</span>
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
	<%@ include file="../inc/bottom.jsp" %>
	
    <script src="../plugins/animate/jquery.animatecss.min.js"></script>
    <script type="text/javascript">
        $(function() {  

        	$("#box2").animateCSS('bounceInDown',
                    { delay: 200,
                      duration: 1500,
                      infinite: false 
                });

            /** 페이지 열린 직후의 처리*/
            var box = $(".page").find(".box1");    // 0번째 `.page`요소에 있는 .box 얻기

            box.eq(0).animateCSS('fadeInLeft', {
                duration: 1500
            });

            box.eq(1).animateCSS('fadeInRight', {
                duration: 1500
            });

            box.eq(2).animateCSS('fadeInLeft', {
                duration: 1500
            });

            box.eq(3).animateCSS('fadeInRight', { 
                duration: 1500
            });
        });
    </script>
    
	
	
  </body>
</html>
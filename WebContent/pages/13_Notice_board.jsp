<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<%@ include file="../inc/head.jsp"%>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>Notice_board</title>
</head>
<body>
	<%@ include file="../inc/top.jsp"%>

	<div class="container" style="height: 500px;">
		<!DOCTYPE html>
		<html lang="ko">


<body>
	<h1 id="title"></h1>
	<p id="description"></p>
	<table width="1000" border="1">
		<thead>
			<tr>
				<th align="center">번호</th>
				<th align="center">제목</th>
				<th align="center">조회수</th>
				<th align="center">작성일</th>
			</tr>
		</thead>
		<tbody id="list">
		</tbody>
	</table>

	<!-- jQuery Script CND방식 참조 -->
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
        /** 게시판의 정보를 표현하기 위한 JSON 데이터 정의 */
        // 블록{} 밖에서 정의된 변수나 객체는 블록{} 안에서 인식할 수 있다.
        var bbs = {
            title: "Q & A",
            description: "자유로운 질문과 전문의의 답변을 확인하실 수 있습니다.",
            item: [
                { no: 1, subject: "목이 아파요",          hit: 3,  date: "2018.02.27" },
                { no: 2, subject: "검진 부탁드립니다.",        hit: 6,  date: "2018.03.08" },
                { no: 3, subject: "피부 알레르기",        hit: 15, date: "2018.03.07" },
                { no: 4, subject: "두통과 열의 관계", hit: 19, date: "2018.03.05" },
                { no: 5, subject: "목이 아파요",          hit: 3,  date: "2018.02.27" },
                { no: 6, subject: "검진 부탁드립니다.",        hit: 6,  date: "2018.03.08" },
                { no: 7, subject: "피부 알레르기",        hit: 15, date: "2018.03.07" },
                { no: 8, subject: "두통과 열의 관계", hit: 19, date: "2018.03.05" }
                
            ]
        };

        $(function() {
            $("#title").html(bbs.title);
            $("#description").html(bbs.description);

            // 배열로 표현되는 게시물 정보에 대한 출력 HTML 생성
            var mytag = "";

            for (var i = 0; i < bbs.item.length; i++) {
                mytag += "<tr>";
                mytag += "<td>" + bbs.item[i].no + "</td>";
                mytag += "<td>" + bbs.item[i].subject + "</td>";
                mytag += "<td>" + bbs.item[i].hit + "</td>";
                mytag += "<td>" + bbs.item[i].date + "</td>";
                mytag += "</tr>"
            }

            $("#list").html(mytag);
        });
        
        
    </script>
</body>

		</html>


	</div>

	<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
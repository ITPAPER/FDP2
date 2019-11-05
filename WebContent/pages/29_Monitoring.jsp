<%@page import="study.jsp.model1.model.EmergencyAddr"%>
<%@page import="study.jsp.model1.model.Hospital"%>
<%@page import="study.jsp.model1.service.ApiHospitalService"%>
<%@page import="retrofit2.Call"%>
<%@page import="retrofit2.Retrofit"%>
<%@page import="study.jsp.model1.helper.RetrofitHelper"%>
<%@page import="study.jsp.model1.helper.WebHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	/** 1) 필요한 객체 생성 부분 */
	// Helper 객체 생성
	// -> import study.jsp.model1.helper.WebHelper;
	WebHelper webHelper = WebHelper.getInstance(request, response);

	// -> import study.jsp.model1.helper.RetrofitHelper;
	RetrofitHelper retrofitHelper = RetrofitHelper.getInstance();

	// Retrofit 객체 생성
	// -> import retrofit2.Retrofit;
	// -> import study.jsp.model1.service.ApiKobisService;
	Retrofit retrofit = retrofitHelper.getRetrofit(ApiHospitalService.BASE_URL);

	// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
	ApiHospitalService apiHospitalService = retrofit.create(ApiHospitalService.class);

	/** 2) 검색일 파라미터 처리 */
	// 검색어 키워드 받기
	String query = webHelper.getString("query", "");

	// 검색어가 없다면 Caledar 클래스를 사용하여 하루 전 날짜 값을 yyyy-mm-dd 형식으로 생성한다.
	if (query == null) {
		query = "서울특별시";
	}

	/** 3) API 연동 */

	// 검색 결과를 저장할 Beans 객체 선언
	Hospital hospital = null;
	EmergencyAddr emergencyAddr = null;

	// 검색어가 존재할 경우 KakaoOpenAPI를 통해 검색 결과 받아옴.
	if (query.equals("")) {
		Call<Hospital> call = apiHospitalService.getHospital("서울특별시", 1, 49);
		try {
			hospital = call.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	if (query.equals("")) {
		Call<EmergencyAddr> call = apiHospitalService.getEmergencyAddr("서울특별시", 1, 49);
		try {
			emergencyAddr = call.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
<%@ include file="../inc/head.jsp"%>
<style type="text/css">
	
	* {
		padding: 0;
		margin: 0;
	}
	.container {
		position: relative;
	}
	
	.container2 {
		position: absolute;
		left: 85px;
	}
	
	.ththth {
		font-size: 12px;
		vertical-align: middle !important;
		font-weight: normal;	
		text-align: center;	
		line-height: 1;
		background: #eeeeee;
	}
	
	.tdtdtd {
		font-size: 12px;
		vertical-align: middle !important;
		font-weight: normal;	
		text-align: center;	
		line-height: 1;
	}
	
	h5 {
		margin: 0px;
	}
</style>
<script type="text/javascript">
	function printTime() {
		// 현재 시각을 구한다.
		var days = [ "일", "월", "화", "수", "목", "금", "토" ];
		var mydate = new Date();

		var yy = mydate.getFullYear();
		var mm = mydate.getMonth() + 1;
		var dd = mydate.getDate();
		var i = mydate.getDay();
		var day = days[i];
		var hh = mydate.getHours();
		var mi = mydate.getMinutes();
		var ss = mydate.getSeconds();

		// 완성된 현재 시각
		var result = yy + "-" + mm + "-" + dd + " " + day + "요일 " + hh + ":"
				+ mi + ":" + ss;

		// id속성값이 timer인 요소에게 결과를 출력한다.
		document.getElementById("timer").innerHTML = result;
	}

	function startTimer() {
		// printTime 함수를 1초에 한번씩 반복해서 자동 호출한다.
		setInterval(printTime, 100);
	}
</script>
</head>
<body onload="startTimer()">
<%@ include file="../inc/top.jsp"%>
<div class="container" style="min-height: 11200px;" >
<div class="container2">
	<header>
		<h1 style="padding: 15px;"> 서울시 응급실 현황</h1>
		<h2 id="timer" style="padding: 15px; color: red;"></h2>
	</header>

	<% if (hospital != null) { %>
	<% for (Hospital.Response.Body.Items.Item item : hospital.getResponse().getBody().getItems().getItem()) { %>
	<div class="table-responsive">
		<table class="table table-bordered table-hover" style="width: 1200px;">
			<thead>
				<tr>
					<th colspan="10" class="text-left" style="line-height: 1; font-size: 20px; padding: 15px 0px; border-bottom: 0;">&nbsp; <%=item.getDutyName()%></th>
				</tr>
				<tr>
					<td colspan="10" style="font-size: 13px; border-bottom: 0;  padding: 8px 15px;">연락처:<%=item.getTel()%></td>
				</tr>
				<% if (emergencyAddr != null) {
					for (EmergencyAddr.Response.Body.Items.Item item1 : emergencyAddr.getResponse().getBody().getItems().getItem()) { 
						String aa= item.getHpid();
						if (aa.equals(item1.getHpid())) { %>
							<tr><td colspan="10" style="font-size: 13px; padding: 8px 15px;"><%= item1.getDutyAddr() %></td></tr>
						<% }%>
					<% } %>
				<% } %>
			</thead>
			<tbody>
				<tr>
					<th class="text-center ththth"> 응급실  		</th>
					<th class="text-center ththth"> 내과 중환자실	</th>
					<th class="text-center ththth"> 외과 중환자실	</th>
					<th class="text-center ththth"> 외과입원실		</th>
					<th class="text-center ththth"> 신경과입원실	</th>
					<th class="text-center ththth"> 신경외과 중환자실</th>
					<th class="text-center ththth"> 인큐베이터 유무 	</th>
					<th class="text-center ththth"> 소아당직의 직통번호 </th>
					<th class="text-center ththth"> 신경 중환자실	  </th>
					<th class="text-center ththth"> 신생아중환자실	  </th>
				</tr>
				
				<tr>
					<td class="tdtdtd"><%=item.getHvec()%></td>
					<td class="tdtdtd"><%=item.getHv2()%></td>
					<td class="tdtdtd"><%=item.getHv3()%></td>
					<td class="tdtdtd"><%=item.getHv4()%></td>
					<td class="tdtdtd"><%=item.getHv5()%></td>
					<td class="tdtdtd"><%=item.getHv6()%></td>
					<td class="tdtdtd"><%=item.getHv11()%></td>
					<td class="tdtdtd"><%=item.getHv12()%></td>
					<td class="tdtdtd"><%=item.getHvcc()%></td>
					<td class="tdtdtd"><%=item.getHvncc()%></td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<% } %>
	<% } %>
</div>	
</div>
<%@ include file="../inc/bottom.jsp"%>
</body>
</html>
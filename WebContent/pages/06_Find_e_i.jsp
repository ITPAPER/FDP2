<%@page import="com.google.gson.Gson"%>
<%@page import="study.java.model.MyErListUno.Response.Body.Items.Itema"%>
<%@page import="study.java.model.MyErListUno"%>
<%@page import="study.java.model.MyErList"%>
<%@page import="study.java.model.MyErList.Response.Body.Items.Item"%>
<%@page import="study.java.service.ErService"%>
<%@page import="study.jsp.model1.helper.RetrofitHelper"%>
<%@page import="study.jsp.model1.helper.WebHelper"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="study.java.model.ErItem"%>
<%@page import="retrofit2.Call"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="retrofit2.Retrofit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/** 1) 필요한 객체 생성 부분 */
	// Helper 객체 생성
	// -> import study.jsp.model1.helper.WebHelper;
	WebHelper webHelper = WebHelper.getInstance(request, response);
	
	String gu = request.getParameter("data");
	
	System.out.println("]]]]]]]]]]]]"+gu);
	List<String> ergu = new ArrayList<String>();
	
	if (gu.equals("1")) {
		ergu.add("도봉구");
		ergu.add("성북구");
		ergu.add("노원구");
	} else if (gu.equals("2")){
		ergu.add("동대문구");
		ergu.add("중랑구");
		ergu.add("성동구");
		ergu.add("노원구");
	} else if (gu.equals("3")) {
		ergu.add("강동구");
		ergu.add("송파구");
	} else if (gu.equals("4")) {
		ergu.add("서초구");
		ergu.add("강남구");
	} else if (gu.equals("5")) {
		ergu.add("동작구");
		ergu.add("관악구");
		ergu.add("금천구");
	} else if(gu.equals("6")) {
		ergu.add("양천구");ergu.add("영등포구");ergu.add("구로구");
	} else if (gu.equals("7")) {
		ergu.add("은평구");ergu.add("서대문구");
	} else {
		ergu.add("종로구");ergu.add("중구");ergu.add("용산구");
	}
	
	
	

	// -> import study.jsp.model1.helper.RetrofitHelper;
	RetrofitHelper retrofitHelper = RetrofitHelper.getInstance();

	// Retrofit 객체 생성
	// -> import retrofit2.Retrofit;
	// -> import study.jsp.model1.service.ApiKobisService;
	Retrofit retrofit = retrofitHelper.getRetrofit(ErService.BASE_URL);

	// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
	ErService erService = retrofit.create(ErService.class);
	
	List<Item> list = null;
	List<ErItem> result = new ArrayList<ErItem>();
	for(int i=0; i<ergu.size(); i++){
		String mygu = ergu.get(i);
		
		
		Call<MyErList> call = erService.getMyErList(mygu);
		MyErList myErList = null;
		try{
			myErList = call.execute().body();
		} catch(Exception e){
			System.out.println("배열의 형태가 아님");
		}
		
		if(myErList != null){
			list = myErList.getResponse().getBody().getItems().getItem();
			
			for(Item abc : list ){
				String dutyAddr = abc.getDutyAddr(); 
				String dutyName = abc.getDutyName();
				String dutyTel = abc.getDutyTel();
				Double wgs84Lat = abc.getWgs84Lat();
				Double wgs84Lon = abc.getWgs84Lon();	
				
				result.add( new ErItem(dutyAddr, dutyName, dutyTel, wgs84Lat, wgs84Lon));
			}

		} else{
			Call<MyErListUno> call1 = erService.getMyErListUno(mygu);
			MyErListUno myErListUno = null;
			myErListUno = call1.execute().body();
			Itema item = myErListUno.getResponse().getBody().getItems().getItema();
			
			String dutyAddr = item.getDutyAddr();
			String dutyName = item.getDutyName();
			String dutyTel = item.getDutyTel();
			Double wgs84Lat = item.getWgs84Lat();
			Double wgs84Lon = item.getWgs84Lon();

  			result.add( new ErItem(dutyAddr, dutyName, dutyTel, wgs84Lat, wgs84Lon));

		}
	}
	Gson gson = new Gson();
	response.getWriter().print(gson.toJson(result));	
%>

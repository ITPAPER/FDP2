<%@page import="study.java.model.HosItem.Response.Body.Items.Item"%>
<%@page import="study.java.model.HosItem"%>
<%@page import="study.jsp.model1.helper.RetrofitHelper"%>
<%@page import="study.jsp.model1.helper.WebHelper"%>
<%@page import="study.java.service.ErService"%>
<%@page import="org.json.JSONArray" %>
<%@page import="org.json.JSONObject"%>
<%@page import="java.net.URLEncoder"%>
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

	// -> import study.jsp.model1.helper.RetrofitHelper;
	RetrofitHelper retrofitHelper = RetrofitHelper.getInstance();

	// Retrofit 객체 생성
	// -> import retrofit2.Retrofit;
	// -> import study.jsp.model1.service.ApiKobisService;
	Retrofit retrofit = retrofitHelper.getRetrofit(ErService.BASE_URL);
	
	// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
    ErService ErService = retrofit.create(ErService.class);

	String dgsbjtCd = webHelper.getString("subject");
	int sgguCd = webHelper.getInt("data");
	String emdongNm =webHelper.getString("dong", "");

	HosItem hos = null;
	List<Item> list = null;
	if (dgsbjtCd != null || sgguCd!=0 ) {
        Call<HosItem> call = ErService.getHospi(dgsbjtCd, sgguCd, emdongNm);
    	System.out.println(call);
        try {
            hos = call.execute().body();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	System.out.println(hos);
	list = hos.getResponse().getBody().getItems().getItem();
	JSONObject json = new JSONObject();
	json.put("items", list);
	response.getWriter().print(json);
	
%>
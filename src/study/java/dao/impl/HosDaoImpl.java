package study.java.dao.impl;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import study.java.dao.HosDao;
import study.java.model.HospitalItem;
import study.java.helper.HttpHelper;
import study.java.helper.JsonHelper;

public class HosDaoImpl implements HosDao{

	@Override
	public List<HospitalItem> getHosList(String subj, String gu, String txt) {
		List<HospitalItem> list = null;
		
		//검색어
		String subject =subj;
		int search = Integer.parseInt(gu);
		String dong = null;
		try {
			dong = URLDecoder.decode(txt,"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(subject);
		System.out.println(search);

		System.out.println(dong);


		list = new ArrayList<HospitalItem>();

			
		
		String url = "http://apis.data.go.kr/B551182/hospInfoService/getHospBasisList?ServiceKey=yt%2Fieh%2Fbe%2Fjap6NlGQZMqUd%2Bu0hfmIjkuSp4ROnxTK9TgWw5rx%2F2uNEI7TvW%2BGOGQUsN%2BXNsVSmNBz0xmICjOA%3D%3D&sidoCd=110000&numOfRows=100&sgguCd="+search+"&_type=json&dgsbjtCd="+subject+"&emdongNm="+ dong ;
		
		
		// JSON파일을 읽어서 객체로 변환
				//--> URL과  HTTP Header 데이터를 함께 전달한다.
		InputStream is = HttpHelper.getInstance().getWebData(url, "utf-8");
		
		//통신결과가 없다면 처리 중단
		if(is==null) {
			System.out.println("데이터 다운로드 실패");
			return null;
		}
		
		
		//통신결과를 JSON으로 변환
		JSONObject json = JsonHelper.getInstance().getJSONObject(is, "utf-8");
		//원하는 데이터에 접근하기
		JSONObject a = json.getJSONObject("response");
		JSONObject b = a.getJSONObject("body");
		JSONObject c = b.getJSONObject("items");
		
		System.out.println(c);
		
		String y = String.valueOf(c);
		int x=0;
		int z =y.indexOf(":");
		
		while(x<25) {
			z =y.indexOf(":",z+1);
		
			if(z==-1) {	
				break;
			}
		x++;
		}
		
		if(23 < x){ 
			JSONArray documents = c.getJSONArray("item"); 
			//배열의 항목 수 만큼 반복 
			for(int i = 0; i < documents.length(); i++) { 
			 //배열의 각 요소 추출
			 JSONObject item = documents.getJSONObject(i);
			 //값 추출 
			 String name = item.getString("yadmNm"); 
			 String addr = item.getString("addr");
			 String tel = null;
			 try {
				 tel =  item.getString("telno");
			 }catch (JSONException e){
					  tel = "No Tel";
			 }
			 String hurl = null;
			 try {
			  hurl = item.getString("hospUrl");
			 }catch (JSONException e){
				  hurl = "No URL";
			 }
			 
			 Double lon =null;
			 try {
				 lon = item.getDouble("XPos");
			 }catch (JSONException e){
				 continue;
			 }
			 Double lan = item.getDouble("YPos");
			 
			 // 추출한 값을 객체화 하여 List에 추가
			 list.add(new HospitalItem(name, addr, lon, lan, hurl, tel ));
			  
			  }
		
	
		
			
			 } else { 
				 JSONObject documents = c.getJSONObject("item");
					
				 String name = documents.getString("yadmNm"); 
				 String addr = documents.getString("addr");
				 String tel = null;
				 try {
					 tel =  documents.getString("telno");
				 }catch (JSONException e){
						  tel = "No Tel";
				 }
				 String hurl = null;
				 try {
				  hurl = documents.getString("hospUrl");
				 }catch (JSONException e){
					  hurl = "No URL";
				 }
				 
				 Double lon =null;
				 
				 lon = documents.getDouble("XPos");
				 
				 Double lan = documents.getDouble("YPos");
				 
				 // 추출한 값을 객체화 하여 List에 추가
				 list.add(new HospitalItem(name, addr, lon, lan, hurl, tel ));
			 }
			 
		
		return list;
	}

}

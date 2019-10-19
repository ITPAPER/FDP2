package study.java.dao.impl;

import java.io.InputStream;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import study.java.dao.ErDao;
import study.java.helper.HttpHelper;
import study.java.helper.JsonHelper;
import study.java.model.ErItem;

public class ErDaoImpl implements ErDao{

	@Override
	public List<ErItem> getErList(String gu) {
		List<ErItem> list = null;
		
		//검색어
		int search = Integer.parseInt(gu);
		
		List<String> ergu = new ArrayList<String>();

		
		
		if (search == 1) {
			ergu.add("도봉구");
			ergu.add("성북구");
			ergu.add("노원구");
		} else if (search==2){
			ergu.add("동대문구");
			ergu.add("중랑구");
			ergu.add("성동구");
			ergu.add("노원구");
		} else if (search==3) {
			ergu.add("강동구");
			ergu.add("송파구");
		} else if (search==4) {
			ergu.add("서초구");
			ergu.add("강남구");
		} else if (search==5) {
			ergu.add("동작구");
			ergu.add("관악구");
			ergu.add("금천구");
		} else if(search ==6) {
			ergu.add("양천구");ergu.add("영등포구");ergu.add("구로구");
		} else if (search ==7) {
			ergu.add("은평구");ergu.add("서대문구");
		} else {
			ergu.add("종로구");ergu.add("중구");ergu.add("용산구");
		}

		list = new ArrayList<ErItem>();

		for(int j =0; j < ergu.size(); j++) {
			
		
		String url = "http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEgytListInfoInqire?_type=json&Q0=서울특별시&ServiceKey=yt%2Fieh%2Fbe%2Fjap6NlGQZMqUd%2Bu0hfmIjkuSp4ROnxTK9TgWw5rx%2F2uNEI7TvW%2BGOGQUsN%2BXNsVSmNBz0xmICjOA%3D%3D&Q1=" + ergu.get(j);
		
		
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
		
		
		String y = String.valueOf(c);
		int x=0;
		int z =y.indexOf(":");
		
		while(x<15) {
			z =y.indexOf(":",z+1);
		
			if(z==-1) {	
				break;
			}
		x++;
		}
		
		if(13 < x){ 
			JSONArray documents = c.getJSONArray("item"); 
			//배열의 항목 수 만큼 반복 
			for(int i = 0; i < documents.length(); i++) { 
			 //배열의 각 요소 추출
			 JSONObject item = documents.getJSONObject(i);
			 //값 추출 
			 String addr = item.getString("dutyAddr"); 
			 String name = item.getString("dutyName");
			 String tel = item.getString("dutyTel3");
			 Double lon = item.getDouble("wgs84Lat");
			 Double lan = item.getDouble("wgs84Lon");	  
			 // 추출한 값을 객체화 하여 List에 추가
			 list.add(new ErItem(addr, name, tel, lon, lan));
			  
			  }
		
	
		
			
			 } else { 
				 JSONObject documents = c.getJSONObject("item");
					//배열의 각 요소 추출
					System.out.println(documents);
					//값 추출
					String addr = documents.getString("dutyAddr");
					String name = documents.getString("dutyName");
					String tel = documents.getString("dutyTel3");
					Double lon = documents.getDouble("wgs84Lat");
					Double lan = documents.getDouble("wgs84Lon");
				
					// 추출한 값을 객체화 하여 List에 추가
					list.add(new ErItem(addr, name, tel, lon, lan));
			 }
		}	 
		
		return list;
	}

}

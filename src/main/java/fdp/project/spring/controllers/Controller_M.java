package fdp.project.spring.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import fdp.project.spring.helper.RetrofitHelper;
import fdp.project.spring.helper.WebHelper;
import fdp.project.spring.model.ErItem;
import fdp.project.spring.model.HosItem;
import fdp.project.spring.model.MyErList;
import fdp.project.spring.model.MyErList.Response.Body.Items.Item;
import fdp.project.spring.model.MyErListUno;
import fdp.project.spring.model.MyErListUno.Response.Body.Items.Itema;
import fdp.project.spring.service.ErService;
import retrofit2.Call;
import retrofit2.Retrofit;

@Controller
public class Controller_M {
	@RequestMapping(value = "02_Login.do", method = RequestMethod.GET)
	public String Login() {
		
		return "02_Login";
	}
	@RequestMapping(value = "03_Find_h.do", method = RequestMethod.GET)
	public String Find_h() {
		
		return "03_Find_h";
	}
	
	@RequestMapping(value = "05_Find_e.do", method = RequestMethod.GET)
	public String Find_e(Locale locale, Model model) {
		
		return "05_Find_e";
	}
	
	@Autowired WebHelper webHelper;
	@Autowired RetrofitHelper retrofitHelper;
	@ResponseBody
	@RequestMapping(value = {"fer.do"}, method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String fer(Model model, HttpServletRequest request, HttpServletResponse response) {
		/** 1) 필요한 객체 생성 부분 */
		// Helper 객체 생성
		// -> import study.jsp.model1.helper.WebHelper;
		
		String gu = request.getParameter("data");
		//String gu = webHelper.getString("data");
		
		//System.out.println("]]]]]]]]]]]]"+gu);
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
				try {
					myErListUno = call1.execute().body();
				} catch (IOException e) {
					e.printStackTrace();
				}
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
		return gson.toJson(result);
	}
	
	@ResponseBody
	@RequestMapping(value = {"findh.do"}, method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String findh(Model model, HttpServletRequest request, HttpServletResponse response) {
		/** 1) 필요한 객체 생성 부분 */
		// Retrofit 객체 생성
		// -> import retrofit2.Retrofit;
		// -> import study.jsp.model1.service.ApiKobisService;
		Retrofit retrofit = retrofitHelper.getRetrofit(ErService.BASE_URL);
		
		// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
	    ErService ErService = retrofit.create(ErService.class);

		String dgsbjtCd = request.getParameter("subject");
		String sgguCd = request.getParameter("data");
		String emdongNm =request.getParameter("dong");

		HosItem hos = null;
		List<fdp.project.spring.model.HosItem.Response.Body.Items.Item> list = null;
		if (dgsbjtCd != null || sgguCd!=null) {
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
		
		Gson gson = new Gson();
		
		return  gson.toJson(list);
	}
}

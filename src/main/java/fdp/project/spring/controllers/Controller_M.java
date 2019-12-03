package fdp.project.spring.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import fdp.project.spring.helper.RetrofitHelper;
import fdp.project.spring.helper.WebHelper;
import fdp.project.spring.model.ErItem;
import fdp.project.spring.model.HosItem;
import fdp.project.spring.model.HospInfo;
import fdp.project.spring.model.Member;
import fdp.project.spring.model.MyErList;
import fdp.project.spring.model.MyErList.Response.Body.Items.Item;
import fdp.project.spring.model.MyErListUno;
import fdp.project.spring.model.MyErListUno.Response.Body.Items.Itema;
import fdp.project.spring.service.ErService;
import fdp.project.spring.service.HospInfoService;
import fdp.project.spring.service.MemberService;
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
	public String fer() { 
		
		/** 1) 필요한 객체 생성 부분 */
		
		String gu = webHelper.getString("data");
		
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
	
	@Autowired HospInfoService hospInfoService;
	@ResponseBody
	@RequestMapping(value = {"findh.do"}, method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String findh(Model model,
			@RequestParam(value="subject") String dgsbjtCd,
			@RequestParam(value="data") String sgguCd,
			@RequestParam(value="dong") String emdongNm) {
		
		int bbb = Integer.parseInt(sgguCd);
		String aaa="";
		
		switch(bbb) { 
		  case 110001: 
			  aaa="강남구"; break;
		  case 110002: 
			  aaa="강동구"; break; 
		  case 110003: 
			  aaa="강서구"; break; 
		  case 110004:
			  aaa="관악구"; break; 
		  case 110005:
			  aaa="구로구"; break; 
		  case 110006:
			  aaa="도봉구"; break; 
		  case 110007:
			  aaa="동대문구"; break; 
		  case 110008:
			  aaa="동작구"; break; 
		  case 110009:
			  aaa="마포구"; break; 
		  case 110010:
			  aaa="서대문구"; break; 
		  case 110011:
			  aaa="성동구"; break; 
		  case 110012:
			  aaa="성북구"; break; 
		  case 110013:
			  aaa="영등포구"; break; 
		  case 110014:
			  aaa="용산구"; break; 
		  case 110015:
			  aaa="은평구"; break; 
		  case 110016:
			  aaa="종로구"; break; 
		  case 110017:
			  aaa="중구"; break;
		  case 110018:
			  aaa="송파구"; break; 
		  case 110019:
			  aaa="중랑구"; break; 
		  case 110020:
			  aaa="양천구"; break;
		  case 110021:
			  aaa="서초구"; break;
		  case 110022:
			  aaa="노원구"; break; 
		  case 110023:
			  aaa="광진구"; break; 
		  case 110024:
			  aaa="강북구"; break; 
		  case 110025:
			  aaa="금천구"; break; 
		}
		
		HospInfo input = new HospInfo();
		Gson gson = new Gson();
		 
		input.setOpentime(aaa);
		input.setAddr(emdongNm);
		input.setSubj(dgsbjtCd);
		
		List<HospInfo> output= null;
		
		try {
			output = hospInfoService.getHospInfoList(input);
			
			int i=0;
			Calendar c = Calendar.getInstance();
			for(HospInfo cc : output) {
				cc.setDay_of_week(c.get(Calendar.DAY_OF_WEEK));
				cc.setOpentime(sgguCd);
				HospInfo dd= cc;
				try {
					
					cc = hospInfoService.getHospInfo(cc);
					
					dd.setOpentime(cc.getOpentime());
					dd.setClosetime(cc.getClosetime());
				}catch(Exception e){
					if(c.get(Calendar.DAY_OF_WEEK) == 7) {
						dd.setOpentime("0900");
						dd.setClosetime("1230");
					}else if(c.get(Calendar.DAY_OF_WEEK) == 1) {
						dd.setOpentime("0000");
						dd.setClosetime("0000");
					}else {
					dd.setOpentime("0900");
					dd.setClosetime("1700");
					}
				}
				
				if(!output.isEmpty()) {
					output.set(i, dd);
				}
				
				i++;
			}
			
			if(!output.isEmpty()) {
				return gson.toJson(output);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(output.isEmpty()) {
			/** 1) 필요한 객체 생성 부분 */
			// Retrofit 객체 생성
			Retrofit retrofit = retrofitHelper.getRetrofit(ErService.BASE_URL);
		
			// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
			ErService ErService = retrofit.create(ErService.class);

			HosItem hos = null;
			List<fdp.project.spring.model.HosItem.Response.Body.Items.Item> list = null;
			Call<HosItem> call = ErService.getHospi(dgsbjtCd, sgguCd, emdongNm);
	        try {
	        	hos = call.execute().body();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	    
	        list = hos.getResponse().getBody().getItems().getItem();
	        output = new ArrayList<HospInfo>();
	        for(fdp.project.spring.model.HosItem.Response.Body.Items.Item abc : list ){
	        	String yadmNm = abc.getYadmNm();
	        	String addr = abc.getAddr();
	        	Double XPos = abc.getXPos();
	        	Double YPos = abc.getYPos();
	        	String clCdNm =abc.getClCdNm();
	        	String hospUrl =abc.getHospUrl();
	        	String hosTel =abc.getTelno();
	        	String subj =dgsbjtCd;
	        	
			
				output.add( new HospInfo(yadmNm, XPos, YPos, addr, clCdNm, hospUrl, hosTel, subj));
			}
			try {
				//	데이터 저장
				//	--> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
				hospInfoService.addHospInfo(output);
				
				int i=0;
				Calendar c = Calendar.getInstance();
				for(HospInfo cc : output) {
					cc.setDay_of_week(c.get(Calendar.DAY_OF_WEEK));
					HospInfo dd= cc;
					try {
						cc = hospInfoService.getHospInfo(cc);
						
						dd.setOpentime(cc.getOpentime());
						dd.setClosetime(cc.getClosetime());
					}catch(Exception e){
						if(c.get(Calendar.DAY_OF_WEEK) == 7) {
							dd.setOpentime("0900");
							dd.setClosetime("1230");
						}else if(c.get(Calendar.DAY_OF_WEEK) == 1) {
							dd.setOpentime("0000");
							dd.setClosetime("0000");
						}else {
						dd.setOpentime("0900");
						dd.setClosetime("1700");
						}
					}
					
					if(!output.isEmpty()) {
						output.set(i, dd);
					}
					
					i++;
				}
				}catch(Exception e) {
					e.printStackTrace();
			}
		}
		return  gson.toJson(output);
	}
	
	@Autowired MemberService memberService;
	@RequestMapping(value = "/coosave.do", method = RequestMethod.POST)
	public ModelAndView coosave(HttpServletResponse response) {
		String user_id = webHelper.getString("user_id");
		String user_pw = webHelper.getString("user_pw");
		int autologin = webHelper.getInt("autologin");
		
		if (user_id == null) {
			return webHelper.redirect(null, "아이디를 입력해주세요.");
		}
		if (user_pw == null) {
			return webHelper.redirect(null, "비밀번호를 입력해주세요.");
		}
		
		Member input = new Member();
		input.setUser_id(user_id);
		input.setUser_pw(user_pw);
		
		Member output = null;
		
		try {
			output = memberService.getMemberOne(input);
			System.out.println(output);
		} catch (Exception e) {
			return webHelper.redirect(null, "해당하는 아이디와 비밀번호의 회원이 없습니다.");
		}
		if(output != null) {
			if(autologin == 7 ) {
				webHelper.setCookie("fdpCookie", user_id, 604800);
				webHelper.setCookie("UserGrade", output.getMember_grade(), 604800);
				webHelper.setCookie("Name", output.getName(), 604800);
				String PK = Integer.toString(output.getFdpmember_id());
				webHelper.setCookie("PK", PK, 604800);
			}else {
				Cookie cookie = new Cookie("fdpCookie", user_id);
				cookie.setPath("/");
				cookie.setDomain("localhost");
				cookie.setMaxAge(-111);
				response.addCookie(cookie);
				
				cookie = new Cookie("UserGrade", output.getMember_grade());
				cookie.setPath("/");
				cookie.setDomain("localhost");
				cookie.setMaxAge(-111);
				response.addCookie(cookie);
				
				cookie = new Cookie("Name", output.getName());
				cookie.setPath("/");
				cookie.setDomain("localhost");
				cookie.setMaxAge(-111);
				response.addCookie(cookie);
				
				String PK = Integer.toString(output.getFdpmember_id());
				cookie = new Cookie("PK", PK);
				cookie.setPath("/");
				cookie.setDomain("localhost");
				cookie.setMaxAge(-111);
				response.addCookie(cookie);
			}
		}
		
		return new ModelAndView("redirect: index.do");
	}
	
	@RequestMapping(value= "/coodel.do", method= RequestMethod.GET )
	public ModelAndView coodel(HttpServletResponse response, HttpServletRequest request ) {
		String aa = webHelper.getCookie("fdpCookie");
		
		webHelper.removeCookie("fdpCookie");
		
		
		return webHelper.redirect("index.do", "안녕히가세요 "+ aa +"님");
	}
}


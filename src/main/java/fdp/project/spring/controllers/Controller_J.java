package fdp.project.spring.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import fdp.project.spring.helper.RetrofitHelper;
import fdp.project.spring.helper.WebHelper;
import fdp.project.spring.model.DiseaseRegion;
import fdp.project.spring.model.Em_Hospital;
import fdp.project.spring.model.Em_Hospital.Response.Body.Items.Item;
import fdp.project.spring.model.EmergencyAddr;
import fdp.project.spring.model.EmergencyAddr.Response.Body.Items.Itema;
import fdp.project.spring.model.Member;
import fdp.project.spring.service.ApiHospitalService;
import fdp.project.spring.service.DiseaseRegionService;
import fdp.project.spring.service.MemberService;
import net.sf.json.JSONObject;
import retrofit2.Call;
import retrofit2.Retrofit;


/**
 * Handles requests for the application home page.
 */
@Controller
public class Controller_J {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	RetrofitHelper retrofitHelper;
	
	@Autowired
	Em_Hospital hospital;
	
	@Autowired
	EmergencyAddr emergencyAddr;
	
	@Autowired
	DiseaseRegionService diseaseRegionService;
	
	@Value("#{servletContext.contextPath}")
    String contextPath;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "07_Statistics.do", method = RequestMethod.GET)
	public ModelAndView statistics(HttpServletRequest request, Model model) {
		String value = request.getParameter("selectedValue");
		System.out.println("***************"+value);
		return new ModelAndView("07_Statistics");
	}
	
	
	@ResponseBody
	@RequestMapping(value = "abc.do", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String tablist(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException {
		
		String disNo = webHelper.getString("disNo");
		String year1 = null;
		String year2 = null;
		String year3 = null;
		String year4 = null;
		String year5 = null;
		
		switch (disNo) {
			case "감기": year1="2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break;
			case "고혈압": year1="sdf2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break;
			case "관절병증": year1="관절2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break; 
			case "비염": year1="비염2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break; 
			case "알레르기성결막염": year1="알레2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break; 
			case "위식도 역류질환": year1="위식2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break; 
			case "접촉피부염": year1="접촉2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break; 
			case "척추질환": year1="척추2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break;
			case "치아우식증": year1="치아2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break; 
			case "치주질환및치은염": year1="치주2014년"; year2="2015년"; year3="2016년"; year4="2017년"; year5="2018년"; break;
		}
		
		Gson gson = new Gson();
		
		JSONObject json = new JSONObject();
		json.put("disNo", disNo);
		json.put("year1", year1);
		json.put("year2", year2);
		json.put("year3", year3);
		json.put("year4", year4);
		json.put("year5", year5);
		
		return gson.toJson(json);
	}
	
	@RequestMapping(value = "09_Sign_up_a.do", method = RequestMethod.GET)
	public String signup() {
		return "09_Sign_up_a";
	}
	
	@RequestMapping(value = "09_Sign_up_a2.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String signupina() {
		return "09_Sign_up_a2";
	}
	
	@RequestMapping(value = "10_Sign_up_i_d2.do", method = RequestMethod.GET)
	public ModelAndView signupidd(Model model) {
		int fdpmember_id = webHelper.getInt("fdpmember_id");
		
		if (fdpmember_id == 0) {
			return webHelper.redirect(null, "회원번호가 없습니다.");
		}
		
		Member input = new Member();
		input.setFdpmember_id(fdpmember_id);
		
		Member output = null;
		
		try {
			output = memberService.getMemberItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);
		return new ModelAndView("10_Sign_up_i_d2");
	}
	
	@RequestMapping(value = "10_Sign_up_i_d.do", method = RequestMethod.GET)
	public ModelAndView signupid(Model model) {
		return new ModelAndView("10_Sign_up_i_d");
	}
	
	@RequestMapping(value = "10_Sign_up_d_add.do", method = RequestMethod.POST)
	public ModelAndView signupid2(Model model, HttpServletRequest request, HttpServletResponse response) {

		String name = request.getParameter("name");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String email = request.getParameter("email");
		int gender = webHelper.getInt("gender");
		String birthdate = request.getParameter("birthdate");
		String tel = request.getParameter("tel");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		String addr4 = request.getParameter("addr4");
		String reg_date = request.getParameter("reg_date");
		String edit_date = request.getParameter("edit_date");
		String medical_field = request.getParameter("medical_field");
		
	    if (name == null || user_id == null || user_pw == null || email == null || gender == 0 || birthdate == null || tel == null
	    		|| addr1 == null || addr2 == null || addr3 == null || addr4 == null || reg_date == null || edit_date == null
	    		|| medical_field == null ) {
	        //이전 페이지로 강제 이동 후 종료
	        webHelper.redirect(null, "입력항목이 잘못되었습니다.");
	    } 
		
	    Calendar cal = Calendar.getInstance();
	    int yy = cal.get(Calendar.YEAR);
	    int mm = cal.get(Calendar.MONTH) + 1;
	    int dd = cal.get(Calendar.DAY_OF_MONTH);
	    int hh = cal.get(Calendar.HOUR_OF_DAY);
	    int mi = cal.get(Calendar.MINUTE);
	    int ss = cal.get(Calendar.SECOND);
	    
	    String currenttime = String.format("%04d-%02d-%02d %02d:%02d:%02d", yy, mm, dd, hh, mi, ss);
	    
        Member input = new Member();
        input.setName(name);
        input.setUser_id(user_id);
        input.setUser_pw(user_pw);
        input.setEmail(email);
        input.setGender(gender);
        input.setBirthdate(birthdate);
        input.setTel(tel);
        input.setAddr1(addr1);
        input.setAddr2(addr2);
        input.setAddr3(addr3);
        input.setAddr4(addr4);
        input.setReg_date(currenttime);
        input.setEdit_date(edit_date);
        input.setMedical_field(medical_field);
        input.setMember_grade("1");
	    
        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            memberService.addMember(input);
            
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }
        
        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
        String redirectUrl = contextPath + "/10_Sign_up_i_d2.do?fdpmember_id=" + input.getFdpmember_id();
        return webHelper.redirect(redirectUrl, "회원정보 입력이 완료되었습니다.");
	}
	
	@RequestMapping(value = "11_Sign_up_i_n.do", method = RequestMethod.GET)
	public String signupin() {
		return "11_Sign_up_i_n";
	}
	
	@RequestMapping(value = "11_Sign_up_i_add.do", method = RequestMethod.POST)
	public ModelAndView signupin2(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String email = request.getParameter("email");
		int gender = webHelper.getInt("gender");
		String birthdate = request.getParameter("birthdate");
		String tel = request.getParameter("tel");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		String addr4 = request.getParameter("addr4");
		String reg_date = request.getParameter("reg_date");
		String edit_date = request.getParameter("edit_date");
		
	    if (name == null || user_id == null || user_pw == null || email == null || gender == 0 || birthdate == null || tel == null
	    		|| addr1 == null || addr2 == null || addr3 == null || addr4 == null || reg_date == null || edit_date == null
	    		) {
	        //이전 페이지로 강제 이동 후 종료
	        webHelper.redirect(null, "입력항목이 잘못되었습니다.");
	    } 
		
	    Calendar cal = Calendar.getInstance();
	    int yy = cal.get(Calendar.YEAR);
	    int mm = cal.get(Calendar.MONTH) + 1;
	    int dd = cal.get(Calendar.DAY_OF_MONTH);
	    int hh = cal.get(Calendar.HOUR_OF_DAY);
	    int mi = cal.get(Calendar.MINUTE);
	    int ss = cal.get(Calendar.SECOND);
	    
	    String currenttime = String.format("%04d-%02d-%02d %02d:%02d:%02d", yy, mm, dd, hh, mi, ss);
	    
        Member input = new Member();
        input.setName(name);
        input.setUser_id(user_id);
        input.setUser_pw(user_pw);
        input.setEmail(email);
        input.setGender(gender);
        input.setBirthdate(birthdate);
        input.setTel(tel);
        input.setAddr1(addr1);
        input.setAddr2(addr2);
        input.setAddr3(addr3);
        input.setAddr4(addr4);
        input.setReg_date(currenttime);
        input.setEdit_date(edit_date);
        input.setMember_grade("2");
	    
        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            memberService.addMember(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        String redirectUrl = contextPath + "/11_Sign_up_i_n2.do?fdpmember_id=" + input.getFdpmember_id();
        return webHelper.redirect(redirectUrl, "가입을 환영합니다.");
	}
	
	@ResponseBody
	@RequestMapping(value = "idcheck.do", method= RequestMethod.POST, produces="text/plain;charset=UTF-8") 
	public String idcheck() {
		String user_id = webHelper.getString("user_id");
		
		Member member = new Member();
		member.setUser_id(user_id);
		Member output = null;
		
		try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
           output = memberService.getMemberItem(member);
        } catch (Exception e) {
        	System.out.println("중복된 아이디가 없습니다.");
        }

		String status = "OK";
		System.out.println(output);
		
		if (output != null) {
			status = "FAIL";
		}
		
        Gson gson = new Gson();
        return gson.toJson(status);
	}
	
	@RequestMapping(value = "11_Sign_up_i_n2.do", method = RequestMethod.GET)
	public ModelAndView signupnn(Model model) {
		int fdpmember_id = webHelper.getInt("fdpmember_id");
		
		if (fdpmember_id == 0) {
			return webHelper.redirect(null, "회원번호가 없습니다.");
		}
		
		Member input = new Member();
		input.setFdpmember_id(fdpmember_id);
		
		Member output = null;
		
		try {
			output = memberService.getMemberItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);
		return new ModelAndView("11_Sign_up_i_n2");
	}
	
	@RequestMapping(value = "12_Sign_up_s.do", method = RequestMethod.GET)
	public String signups() {
		return "12_Sign_up_s";
	}
	
	
	@RequestMapping(value = "30_Monitoring_spring.do", method = RequestMethod.GET)
	public String monitoring(Model model, HttpServletRequest request) {

		/** 1) 필요한 객체 생성 부분 */
		// Retrofit 객체 생성
		// -> import retrofit2.Retrofit;
		// -> import study.jsp.model1.service.ApiKobisService;
		Retrofit retrofit = retrofitHelper.getRetrofit(ApiHospitalService.BASE_URL);

		// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
		ApiHospitalService apiHospitalService = retrofit.create(ApiHospitalService.class);

		/** 2) 검색일 파라미터 처리 */
		// 검색어 키워드 받기
		String query = request.getParameter("query");

		if (query == null) {
			query = "서울특별시";
		}

		/** 3) API 연동 */
		//응급실가용병상 API
		Call<Em_Hospital> call = apiHospitalService.getHospital("서울특별시", 1, 49);
		Em_Hospital emhospital = null;
		
		try {
			emhospital = call.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		List<Item> item = null;
		
		if (emhospital != null) {
			item = emhospital.getResponse().getBody().getItems().getItem();
		}
		
		//응급실주소 API
		Call<EmergencyAddr> call1 = apiHospitalService.getEmergencyAddr("서울특별시", 1, 49);
		EmergencyAddr emergencyAddr = null;
		
		try {
			emergencyAddr = call1.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		List<Itema> itema = null;
		
		if (emergencyAddr != null) {
			itema = emergencyAddr.getResponse().getBody().getItems().getItem();
		}
		
		try {
			emergencyAddr = call1.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/** 4) View 처리*/
		//model.addAttribute("query", query);
		model.addAttribute("itema", itema);
		model.addAttribute("item", item);
		
		return "30_Monitoring_spring";
	}
	
	@RequestMapping(value="07_1_Statistics.do", method=RequestMethod.GET) 
	public ModelAndView disease(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException {
		//Ajax를위한 json생성테스트시작
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		int disNo = 0;
		String gender = null;
		String age = null;
		String season = null;
		String region = null;
	
		JSONObject json = new JSONObject();
		
		for (int i=1; i<=10; i++) {
			disNo = i;
		}
		
		switch (disNo) {
		case 1: gender="감기성별"; age="감기연령별"; season="감기월별"; region="감기지역별"; break;
		case 2: gender="고혈압성별"; age="고혈압연령별"; season="고혈압월별"; region="고혈압지역별"; break;
		case 3: gender="관절병증성별"; age="관절병증연령별"; season="관절병증월별"; region="관절병증지역별"; break; 
		case 4: gender="비염성별"; age="비염연령별"; season="비염월별"; region="비염지역별"; break; 
		case 5: gender="결막염성별"; age="결막염연령별"; season="결막염월별"; region="결막염지역별"; break; 
		case 6: gender="알레르기성별"; age="알레르기연령별"; season="알레르기월별"; region="알레르기지역별"; break; 
		case 7: gender="위식도성별"; age="위식도연령별"; season="위식도월별"; region="위식도지역별"; break; 
		case 8: gender="척추질환성별"; age="척추질환연령별"; season="척추질환월별"; region="척추질환지역별"; break;
		case 9: gender="치아우식증성별"; age="치아우식증연령별"; season="치아우식증월별"; region="치아우식증지역별"; break; 
		case 10: gender="치주질환성별"; age="치주질환연령별"; season="치주질환월별"; region="치주질환지역별"; break;
	}
	
		json.put("disNo", disNo);
		json.put("gender", gender);
		json.put("age", age);
		json.put("season", season);
		json.put("region", region);
	
		response.getWriter().print(json);
		
		model.addAttribute("json", json);
		model.addAttribute("disNo", disNo);
		//Ajax를위한 json생성테스트끝
		
		
		//데이터베이스로부터 지역병 질병 데이터 불러오기
		DiseaseRegion input = new DiseaseRegion();
		
		List<DiseaseRegion> output = null;
		
		try {
			output = diseaseRegionService.getDisByRegion(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		//그래프 출력을 위한 문자열 만들기
		int size = output.size();
		String aa = String.valueOf(size);
		String[] patientCnt = new String[size];
		String[] region1 = new String[size];
		//DecimalFormat formatter = new DecimalFormat("###,###");
		//String[] dec = new String[size];
		
		for (int i=0; i<size; i++) {
			DiseaseRegion item = output.get(i);
			region1[i] = "'" + item.getDisRegion() + "'";
			//dec[i] = "'"+formatter.format(item.getPatientSum())+"'";
			patientCnt[i] = String.valueOf(item.getPatientSum());
		}
		
		String regionStr = String.join(",", region1);
		String patientCntStr = String.join(",", patientCnt);
		
		//View처리
		model.addAttribute("output", output);
		model.addAttribute("patientCntStr", patientCntStr);
		model.addAttribute("regionStr", regionStr);
		model.addAttribute("aa", aa);
		model.addAttribute("region", region);
		
		return new ModelAndView("07_1_Statistics");
	}
	

}

package fdp.project.spring.controllers;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fdp.project.spring.helper.RetrofitHelper;
import fdp.project.spring.helper.WebHelper;
import fdp.project.spring.model.Em_Hospital;
import fdp.project.spring.model.Em_Hospital.Response.Body.Items.Item;
import fdp.project.spring.model.EmergencyAddr;
import fdp.project.spring.model.Member;
import fdp.project.spring.service.ApiHospitalService;
import fdp.project.spring.service.MemberService;
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
	
	@Value("#{servletContext.contextPath}")
    String contextPath;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "07_Statistics.do", method = RequestMethod.GET)
	public String statistics() {
		return "07_Statistics";
	}
	
	@RequestMapping(value = "09_Sign_up_a.do", method = RequestMethod.GET)
	public String signup() {
		return "09_Sign_up_a";
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
	
	
	@RequestMapping(value = "10_Sign_up_i_add.do", method = RequestMethod.POST)
	public ModelAndView signupid2(Model model, HttpServletRequest request, HttpServletResponse response) {

		String name = request.getParameter("name");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String email = request.getParameter("email");
		int gender = webHelper.getInt("gender");
		String tel = request.getParameter("tel");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		String addr4 = request.getParameter("addr4");
		String reg_date = request.getParameter("reg_date");
		String edit_date = request.getParameter("edit_date");
		String medical_field = request.getParameter("medical_field");
		
	    if (name == null || user_id == null || user_pw == null || email == null || gender == 0 || tel == null
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
        return webHelper.redirect(redirectUrl, "저장되었습니다.");
	}
	
	@RequestMapping(value = "09_Sign_up_a2.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String signupina() {
		return "09_Sign_up_a2";
	}
	
	@RequestMapping(value = "11_Sign_up_i_n.do", method = RequestMethod.GET)
	public String signupin() {
		return "11_Sign_up_i_n";
	}
	
	@RequestMapping(value = "11_Sign_up_i_n2.do", method = RequestMethod.POST)
	public ModelAndView signupin2(Model model, HttpServletRequest request) {
		
		String name = request.getParameter("name");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String email = request.getParameter("email");
		int gender = webHelper.getInt("gender");
		String tel = request.getParameter("tel");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		String addr4 = request.getParameter("addr4");
		String reg_date = request.getParameter("reg_date");
		String edit_date = request.getParameter("edit_date");
		
	 	
	    if (name == null || user_id == null || user_pw == null || email == null || gender == 0 || tel == null
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

        /** 3) 결과를 확인하기 위한 페이지 이동 */
        // 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
        String redirectUrl = contextPath + "/11_Sign_up_i_n2?fdpmember_id=" + input.getFdpmember_id();
        return webHelper.redirect(redirectUrl, "저장되었습니다.");
	}
	
	@RequestMapping(value = "12_Sign_up_s.do", method = RequestMethod.GET)
	public String signups() {
		return "12_Sign_up_s";
	}
	
	@RequestMapping(value = "/assets/api/chart1.do", method = RequestMethod.GET)
	public String chcart1() {
		return "assets/api/chart1";
	}
		
	@RequestMapping(value = "/assets/api/chart2.do", method = RequestMethod.GET)
	public String chcart2() {
		return "assets/api/chart2";
	}
	
	@RequestMapping(value = "/assets/api/chart3.do", method = RequestMethod.GET)
	public String chcart3() {
		return "assets/api/chart3";
	}
	
	@RequestMapping(value = "/assets/api/chart4.do", method = RequestMethod.GET)
	public String chcart4() {
		return "assets/api/chart4";
	}
	@SuppressWarnings("null")
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

		// 검색어가 없다면 Caledar 클래스를 사용하여 하루 전 날짜 값을 yyyy-mm-dd 형식으로 생성한다.
		if (query == null) {
			query = "서울특별시";
		}

		/** 3) API 연동 */
		/*
		 * List<fdp.project.spring.model.Em_Hospital.Response.Body.Items.Item> item =
		 * hospital.getResponse().getBody().getItems().getItem();
		 * List<fdp.project.spring.model.EmergencyAddr.Response.Body.Items.Item> item1 =
		 * emergencyAddr.getResponse().getBody().getItems().getItem();
		 */
		
		// 검색어가 존재할 경우 KakaoOpenAPI를 통해 검색 결과 받아옴.
		
		Call<Em_Hospital> call = apiHospitalService.getHospital("서울특별시", 1, 49);
		Em_Hospital hospital = null;
		
		try {
			hospital = call.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Call<EmergencyAddr> call1 = apiHospitalService.getEmergencyAddr("서울특별시", 1, 49);
		EmergencyAddr emergencyAddr = null;
			
		Em_Hospital.Response.Body.Items.Item item = null;
		
		/*
		 * int hv2 = webHelper.getInt("hv2", item.getHv2()); int hv4 =
		 * webHelper.getInt("hv4", item.getHv4()); int hv6 = webHelper.getInt("hv6",
		 * item.getHv6());
		 */
		
		try {
			emergencyAddr = call1.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/** 4) View 처리*/
		model.addAttribute("query", query);
		model.addAttribute("hospital", hospital);
		model.addAttribute("emergencyAddr", emergencyAddr);
		model.addAttribute("call", call);
		
		/*
		 * model.addAttribute("hv2", hv2); model.addAttribute("hv4", hv4);
		 * model.addAttribute("hv6", hv6);
		 */
		
		/*
		 * model.addAttribute("item", item); model.addAttribute("item1", item1);
		 */
		System.out.println(model);
		if (hospital != null) {
			System.out.println("값이있음");
		} else { System.out.println("값이없음");}

		return "30_Monitoring_spring";
	}
	
	
}

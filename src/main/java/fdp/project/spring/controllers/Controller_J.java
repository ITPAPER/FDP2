package fdp.project.spring.controllers;

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

import fdp.project.spring.helper.WebHelper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Controller_J {
	
	@Autowired
	WebHelper webHelper;
	
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
	
	@RequestMapping(value = "10_Sign_up_i_d.do", method = RequestMethod.GET)
	public String signupid() {
		return "10_Sign_up_i_d";
	}
	
	@RequestMapping(value = "10_Sign_up_i_d2.do", method = RequestMethod.POST)
	public String signupid2(Model model, HttpServletRequest request, HttpServletResponse response) {

		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		String userPwRe = request.getParameter("user_pw_re");
		String userName = request.getParameter("user_name");
		String gender = request.getParameter("gender");
		String birthdate = request.getParameter("birthdate");
		String email = request.getParameter("email");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		String address4 = request.getParameter("address4");
		String tel = request.getParameter("tel");
		String userField = request.getParameter("user_field");
		
	 	
	    if (userId == null || userPw == null || userPwRe == null || userName == null || email == null || tel == null
	    		|| gender == null || birthdate == null) {
	        //이전 페이지로 강제 이동 후 종료
	        webHelper.redirect(null, "입력항목이 잘못되었습니다.");
	    } 
		
	    model.addAttribute("userId", userId);
	    model.addAttribute("userPw", userPw);
	    model.addAttribute("userPwRe", userPwRe);
	    model.addAttribute("userName", userName);
	    model.addAttribute("gender", gender);
	    model.addAttribute("birthdate", birthdate);
	    model.addAttribute("email", email);
	    model.addAttribute("address1", address1);
	    model.addAttribute("address2", address2);
	    model.addAttribute("address3", address3);
	    model.addAttribute("address4", address4);
	    model.addAttribute("tel", tel);
	    model.addAttribute("userField", userField);
	    
		return "10_Sign_up_i_d2";
	}
	
	@RequestMapping(value = "11_Sign_up_i_n.do", method = RequestMethod.GET)
	public String signupin() {
		return "11_Sign_up_i_n";
	}
	
	@RequestMapping(value = "11_Sign_up_i_n2.do", method = RequestMethod.POST)
	public ModelAndView signupin2(Model model, 
			@RequestParam(value="user_id") String userId,
			@RequestParam(value="user_pw") String userPw,
			@RequestParam(value="user_pw_re") String userPwRe,
			@RequestParam(value="user_name") String userName,
			@RequestParam(value="gender") String gender,
			@RequestParam(value="birthdate") String birthdate,
			@RequestParam(value="email") String email,
			@RequestParam(value="address1") String address1,
			@RequestParam(value="address2") String address2,
			@RequestParam(value="address3") String address3,
			@RequestParam(value="address4") String address4,
			@RequestParam(value="tel") String tel) {
		
	    if (userId == null || userPw == null || userPwRe == null || userName == null || email == null || tel == null
	    		|| gender == null || birthdate == null) {
	        //이전 페이지로 강제 이동 후 종료
	        webHelper.redirect(null, "입력항목이 잘못되었습니다.");
	    } 
		
	    model.addAttribute("userId", userId);
	    model.addAttribute("userPw", userPw);
	    model.addAttribute("userPwRe", userPwRe);
	    model.addAttribute("userName", userName);
	    model.addAttribute("gender", gender);
	    model.addAttribute("birthdate", birthdate);
	    model.addAttribute("email", email);
	    model.addAttribute("address1", address1);
	    model.addAttribute("address2", address2);
	    model.addAttribute("address3", address3);
	    model.addAttribute("address4", address4);
	    model.addAttribute("tel", tel);
	    
	    String viewPath = "11_Sign_up_i_n2";
		return new ModelAndView(viewPath);
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
}

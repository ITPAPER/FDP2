package fdp.project.spring.controllers;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fdp.project.spring.helper.WebHelper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Controller_J {
	
	@Autowired
	WebHelper webHelper;
	
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
	public String signupid2(Model model) {

		String userId = webHelper.getString("user_id");
		String userPw = webHelper.getString("user_pw");
		String userPwRe = webHelper.getString("user_pw_re");
		String userName = webHelper.getString("user_name");
		String gender = webHelper.getString("gender");
		String birthdate = webHelper.getString("birthdate");
		String email = webHelper.getString("email");
		String address1 = webHelper.getString("address1");
		String address2 = webHelper.getString("address2");
		String address3 = webHelper.getString("address3");
		String address4 = webHelper.getString("address4");
		String tel = webHelper.getString("tel");
		String userField = webHelper.getString("user_field");
		
	 	
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
	public String signupin2() {
		return "11_Sign_up_i_n2";
	}
	
}

package fdp.project.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Controller_K {
	
	/** WebHelper 주입 */
	@Autowired
	WebHelper webHelper;
	
	/** RegexHelper 주입 */
	@Autowired
	RegexHelper regexHelper;
	
	@RequestMapping(value = "21_Management.do", method = RequestMethod.GET)
	public String Management() {

		return "21_Management";
	}

	@RequestMapping(value = "22_Login_s.do", method = RequestMethod.POST)
	public String Login_s() {

		return "22_Login_s";
	}

	@RequestMapping(value = "26_Profile_i.do", method = RequestMethod.POST)
	public String Profile_i() {

		return "26_Profile_i";
	}

	@RequestMapping(value = "27_Profile.do", method = RequestMethod.POST)
	public String Profile() {

		return "27_Profile";
	}

	@RequestMapping(value = "28_User_stasis.do", method = RequestMethod.GET)
	public String User_stasis() {

		return "28_User_stasis";
	}
}

package fdp.project.spring.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}

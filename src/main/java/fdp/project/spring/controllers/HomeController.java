package fdp.project.spring.controllers;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import fdp.project.spring.model.Member;
import fdp.project.spring.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired MemberService memberService;
	@RequestMapping(value = {"/", "index.do"}, method = RequestMethod.GET)
	public String home(Model model,
			@CookieValue(value="fdp_cookie", defaultValue = "") String fdpCookie) {
		
		System.out.println(fdpCookie);
		String addr = "";
		if(fdpCookie != null) {
			Member member = new Member();
			member.setUser_id(fdpCookie);
			
			try {
				member  = memberService.getMemberItem(member);
			} catch (Exception e) {
				return "index";
			}
			
			
		}
			
	
		return "index";
	}
	
}

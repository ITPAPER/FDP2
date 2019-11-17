package fdp.project.spring.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Controller_K {
	
	@RequestMapping(value = "/21_Management.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String Management(Model model, HttpServletRequest request) {
		/** 컨트롤러에서 세션을 식별하기 위한 처리 */
		HttpSession session = request.getSession();
		String mySessionId = (String) session.getAttribute("my_session_id");
		if(mySessionId == null) {
			mySessionId = "";
		}
		
		model.addAttribute("session_id", mySessionId);
		
		return "21_Management";
	}
	
	@RequestMapping(value = "/22_Login_s.do", method = RequestMethod.GET)
	public String Login_s(Model model) {

		return "22_Login_s";
	}
	
	@RequestMapping(value = "/session/save.do", method = RequestMethod.POST)
	public String sessionSave(HttpServletRequest request,
			@RequestParam(value = "user_id", defaultValue = "") String userId) {
		/** 1) request 객체를 사용해서 세션 객체 만들기 */
		HttpSession session = request.getSession();
		
		/** 2) 세션 저장, 삭제 */
		if(!userId.equals("")) {
			session.setAttribute("my_session_id", userId);
		} else {           
			session.removeAttribute("my_session_id");
		}
		
		/** 3) Spring 방식의 페이지 이동 */
		return "redirect:/21_Management.do";
	}
	
	@RequestMapping(value = "/session/delete.do", method = RequestMethod.GET)
	public String sessionDelete(HttpServletRequest request,
			@RequestParam(value = "user_id", defaultValue = "") String userId) {
		/** 1) request 객체를 사용해서 세션 객체 만들기 */
		HttpSession session = request.getSession();
		
		/** 2) 세션 초기화 */
		session.invalidate();
		
		/** 3) Spring 방식의 페이지 이동 */
		return "redirect:/21_Management.do";
	}
		

	@RequestMapping(value = "/26_Profile_i.do", method = RequestMethod.GET)
	public String Profile_i() {

		return "26_Profile_i";
	}

	@RequestMapping(value = "/27_Profile.do", method = RequestMethod.POST)
	public String Profile() {

		return "27_Profile";
	}

	@RequestMapping(value = "/28_User_stasis.do", method = RequestMethod.GET)
	public String User_stasis() {

		return "28_User_stasis";
	}
}

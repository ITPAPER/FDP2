package fdp.project.spring.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Controller_S {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/17_Navigator.do", method = RequestMethod.GET)
	public String Navigator() {
		
		return "17_Navigator";
	}
	
	@RequestMapping(value = "/18_Intention.do", method = RequestMethod.GET)
	public String Intention() {
		
		return "18_Intention";
	}
	
	@RequestMapping(value = "/19_Team_introduction.do", method = RequestMethod.GET)
	public String Team_introduction() {
		
		return "19_Team_introduction";
	}
	
	@RequestMapping(value = "/20_Strong_point.do", method = RequestMethod.GET)
	public String Strong_point() {
		
		return "20_Strong_point";
	}

	
}

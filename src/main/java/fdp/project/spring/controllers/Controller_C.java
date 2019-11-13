package fdp.project.spring.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Controller_C {
	@RequestMapping(value = "/13_Notice_board.do", method = RequestMethod.GET)
	public String noticeboard13(Locale locale, Model model) {
		
		return "13_Notice_board";
		}
	
	@RequestMapping(value = "/14_Notice_board_i.do", method = RequestMethod.GET)
	public String noticeboard14(Locale locale, Model model) {
		
		return "14_Notice_board_i";
		}
	
	@RequestMapping(value = "/15_Notice_board_2.do", method = RequestMethod.GET)
	public String noticeboard15(Locale locale, Model model) {
		
		return "15_Notice_board_2";
		}
	
	@RequestMapping(value = "/16_Notice_board_new.do", method = RequestMethod.GET)
	public String noticeboard16(Locale locale, Model model) {
		
		return "16_Notice_board_new";
		}
}

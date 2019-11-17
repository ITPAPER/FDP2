package fdp.project.spring.controllers;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fdp.project.spring.helper.RegexHelper;
import fdp.project.spring.helper.WebHelper;
import fdp.project.spring.model.Document;
import fdp.project.spring.service.DocumentService;

@Controller
public class Controller_C {
	/** WebHelper 주입 */
    // --> import org.springframework.beans.factory.annotation.Autowired;
    // --> import study.spring.springhelper.helper.WebHelper;
    @Autowired  WebHelper webHelper;

    /** RegexHelper 주입 */
    @Autowired RegexHelper regexHelper;
    
    /** Service 패턴 구현체 주입 */
    // --> import study.spring.service.DocumentService;
    @Autowired  DocumentService documentService;
    
    /** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
    /** 목록 페이지 */
	@RequestMapping(value = "/13_Notice_board.do", method=RequestMethod.GET)
		public String Notice_board(Locale locale, Model model) {
		return "13_Notice_board";
	}
	
	@RequestMapping(value = "/14_Notice_board_i.do", method = RequestMethod.GET)
	public String Notice_board_i(Locale locale, Model model) {
		
		return "14_Notice_board_i";
		}
	
	@RequestMapping(value = "/14_Notice_board_i_ok.do", method = RequestMethod.GET)
	public String Notice_board_i_ok(Locale locale, Model model) {
		
		return "14_Notice_board_i_ok";
		}
	
	@RequestMapping(value = "/15_Notice_board_2.do", method = RequestMethod.GET)
	public String Notice_board_2(Locale locale, Model model) {
		
		return "15_Notice_board_2";
		}
	
	@RequestMapping(value = "/16_Notice_board_new.do", method = RequestMethod.GET)
	public String Notice_board_new(Locale locale, Model model) {
		
		return "16_Notice_board_new";
		}
	
	@RequestMapping(value = "/16_Notice_board_new_ok.do", method = RequestMethod.GET)
	public String Notice_board_new_ok(Locale locale, Model model) {
		
		return "16_Notice_board_new_ok";
		}
	
	@RequestMapping(value = "/23_Notice_board_s.do", method = RequestMethod.GET)
	public String Notice_board_s(Locale locale, Model model) {
		
		return "23_Notice_board_s";
		}
	
	@RequestMapping(value = "/24_Notice_board_s_2.do", method = RequestMethod.GET)
	public String Notice_board_s_2(Locale locale, Model model) {
		
		return "24_Notice_board_s_2";
		}
	
	@RequestMapping(value = "/25_Notice_board_s_i.do", method = RequestMethod.GET)
	public String Notice_board_s_i(Locale locale, Model model) {
		
		return "25_Notice_board_s_i";
		}
	
	@RequestMapping(value = "/delete_ok.do", method = RequestMethod.GET)
	public String delete_ok(Locale locale, Model model) {
		
		return "delete_ok";
		}
	
}

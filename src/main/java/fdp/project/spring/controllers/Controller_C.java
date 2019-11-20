package fdp.project.spring.controllers;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fdp.project.spring.helper.PageData;
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
    @Autowired DocumentService documentService;
    
    /** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
    /** 목록 페이지 */
	@RequestMapping(value = "/13_Notice_board.do", method=RequestMethod.GET)
		public ModelAndView Notice_board(Model model,
				@RequestParam(value="keyword", defaultValue="") String keyword) {
		/** 1) 필요한 변수 값 생성 */
		//String keyword = webHelper.getString("keyword", "");	// 검색어
		  int nowPage    = webHelper.getInt("page", 1);           // 페이지 번호 (기본값 1)
	      int totalCount = 0;                                     // 전체 게시글 수
	      int listCount  = 10;                                    // 한 페이지당 표시할 목록 수
	      int pageCount  = 5;                                     // 한 그룹당 표시할 페이지 번호 수

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건 값(검색어)를 Beans에 담는다.
		Document input = new Document();
		input.setWriter_name(keyword);
		input.setSubject(keyword);
		input.setContent(keyword);
		input.setHit(0);
		input.setReg_date(keyword);
		input.setEdit_date(keyword);
		
		
		List<Document> output = null;	// 조회 결과가 저장될 객체
		PageData pageData = null;		// 페이지 번호를 계산한 결과가 저장될 객체
		
		try {
			// 전체 게시글 수 조회
            totalCount = documentService.getDocumentCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Document.setOffset(pageData.getOffset());
            Document.setListCount(pageData.getListCount());
			
			// 데이터 조회하기
			output = documentService.getDocumentList(input);
		} catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		String viewPath = "/13_Notice_board";
		return new ModelAndView(viewPath);
	}
	
		/** 상세 페이지 */
	@RequestMapping(value = "/14_Notice_board_i.do", method = RequestMethod.GET)
	public ModelAndView Notice_board_i(Model model) {
		
		 /** 1) 필요한 변수 값 생성 */
		// 조회할 대상에 대한 PK 값
		int document_id = webHelper.getInt("document_id");
		
		// 이 값이 존재하지 않는다면 데이터가 조회가 불가능하므로 반드시 필수 값으로 처리해야한다.
		if(document_id == 0) {
			return webHelper.redirect(null, "게시물 번호가 없습니다.");
		}
		
		/** 2) 데이터 조회하기 */
		Document input = new Document();
		input.setDocument_id(document_id);
		
		Document output = null;
		
		try {
			// 데이터 조회
			output = documentService.getDocumentItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) view 처리 */
		model.addAttribute("output", output);
		return new ModelAndView("14_Notice_board_i");
		}
	
		/** 수정폼 페이지 */
	@RequestMapping(value = "/15_Notice_board_2.do", method = RequestMethod.GET)
	public String Notice_board_2(Locale locale, Model model) {
		
		return "15_Notice_board_2";
		}

		/** 수정폼에 대한 action 페이지 */
	@RequestMapping(value = "/15_Notice_board_2_ok.do", method = RequestMethod.GET)
	public String Notice_board_i_ok(Locale locale, Model model) {
		
		return "15_Notice_board_2_ok";
		}
	
		/** 작성폼 페이지 */
	@RequestMapping(value = "/16_Notice_board_new.do", method = RequestMethod.GET)
	public ModelAndView Notice_board_new(Model model) {
		
		return new ModelAndView("16_Notice_board_new");
		
		}
	
		/** 작성폼에 대한 action 페이지 */
	@RequestMapping(value = "/16_Notice_board_new_ok.do", method = RequestMethod.POST)
	public ModelAndView Notice_board_new_ok(Model model, @RequestParam(value="keyword", defaultValue="") String keyword) {
		/** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
		
		String writer_name = webHelper.getString("writer_name");
		String subject = webHelper.getString("subject");
		String content =  webHelper.getString("content");
		
		int hit = 0;
		String reg_date = "1990-10-10 00:00:00";
		
		
		// 내용은 필수 항목이므로 입력 여부를 검사
		// 미필수(null 허용) 항목은 입력 여부를 검사하지  않는다.
		if (writer_name == null) {
			return webHelper.redirect(null, "작성자를 입력하세요.");
		}
		if (subject == null) {
			return webHelper.redirect(null, "제목을 입력하세요.");
		}
		if (content == null) {
			return webHelper.redirect(null, "내용을 입력하세요.");
		}
		
		/** 2) 데이터 저장하기 */
		Document input = new Document();
		input.setWriter_name(writer_name);
		input.setSubject(subject);
		input.setContent(content);
		input.setHit(hit);
		input.setReg_date(reg_date);
		
		try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK 값이 저장된다.
			documentService.addDocument(input);
		} catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) 결과를 확인하기 위한 페이지 이동 */
		// 저장 결과를 확인하기 위해서 데이터 저장 시 생성된 PK 값을 상세페이지로 전달해야한다.
		String redirectUrl = contextPath + "/14_Notice_board_i.do?document_id=" + input.getDocument_id();
		return webHelper.redirect(redirectUrl, "저장되었습니다.");
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

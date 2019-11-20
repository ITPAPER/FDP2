package fdp.project.spring.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import fdp.project.spring.model.Member;
import fdp.project.spring.service.DocumentService;
import fdp.project.spring.service.MemberService;

@Controller
public class Controller_K {

	@Autowired
	WebHelper webHelper;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	DocumentService documentService;
	@Autowired
	MemberService memberService;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "/21_Management.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Management(Model model, HttpServletRequest request) {

		/** 게시글 목록 조회하기 */
		// 조회결과를 저장할 객체 선언
		List<Document> output = null;
		List<Member> output2 = null;

		try {
			// 데이터 조회 --> 검색조건 없이 모든 게시글 조회
			output = documentService.getDocumentList(null);
			output2 = memberService.getMemberList(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 컨트롤러에서 세션을 식별하기 위한 처리 */
		HttpSession session = request.getSession();
		String mySessionId = (String) session.getAttribute("session_id");
		if (mySessionId == null) {
			mySessionId = "";
		}
		String mySessionPw = (String) session.getAttribute("session_pw");
		if (mySessionPw == null) {
			mySessionPw = "";
		}

		model.addAttribute("output", output);
		model.addAttribute("output2", output2);
		model.addAttribute("my_session_id", mySessionId);
		model.addAttribute("my_session_pw", mySessionPw);

		return new ModelAndView("21_Management");
	}

	@RequestMapping(value = "/22_Login_s.do", method = RequestMethod.GET)
	public String Login_s(Model model) {

		return "22_Login_s";
	}

	// 세션 저장하는 페이지
	@RequestMapping(value = "/session/save.do", method = RequestMethod.POST)
	public String sessionSave(Model model, HttpServletRequest request,
			@RequestParam(value = "user_id", defaultValue = "") String userId,
			@RequestParam(value = "user_pw", defaultValue = "") String userPw) {

		/** 1) request 객체를 사용해서 세션 객체 만들기 */
		HttpSession session = request.getSession();

		/** 2) 세션 저장, 삭제 */
		if (!userId.equals("")) {
			session.setAttribute("session_id", userId);
		} else {
			session.removeAttribute("session_id");
		}

		if (!userPw.equals("")) {
			session.setAttribute("session_pw", userPw);
		} else {
			session.removeAttribute("session_pw");
		}

		/** 3) Spring 방식의 페이지 이동 */
		return "redirect:/check.do";
	}

	// 세션 삭제 하는 페이지
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

	// 관리자 ID/PW 세션에 저장된 값이랑 비교
	@RequestMapping(value = "/check.do")
	public String checkFunction(Model model, HttpServletRequest request, HttpServletResponse response) {
		String[] checkId = { "cherry", "kihyub", "seungseok", "mingi", "jihyeon" };
		String[] checkPw = { "1234", "1234", "1234", "1234", "1234" };

		/** 컨트롤러에서 세션을 식별하기 위한 처리 */
		HttpSession session = request.getSession();
		String mySessionId = (String) session.getAttribute("session_id");
		String mySessionPw = (String) session.getAttribute("session_pw");

		for (int i = 0; i < 5; i++) {
			if (checkId[i].equals(mySessionId) && checkPw[i].equals(mySessionPw)) {

				return "redirect:/21_Management.do";
			}
		} // for문 끝
		session.invalidate();
		return "redirect:/22_Login_s.do";
	}

	@RequestMapping(value = "/26_Profile_i.do", method = RequestMethod.GET)
	public String Profile_i() {

		return "26_Profile_i";
	}

	@RequestMapping(value = "/check2.do")
	public String checkFunctionTwo(Model model, HttpServletRequest request, HttpServletResponse response) {
		String user_pw = webHelper.getString("user_pw");

		/** 컨트롤러에서 세션을 식별하기 위한 처리 */
		HttpSession session = request.getSession();

		String mySessionPw = (String) session.getAttribute("session_pw");

		if (!mySessionPw.equals(user_pw)) {
			return "redirect:/26_Profile_i.do";
		}
		return "redirect:/27_Profile.do";
	}

	@RequestMapping(value = "/27_Profile.do", method = RequestMethod.GET)
	public ModelAndView Profile(Model model) {
		return new ModelAndView("27_Profile");
	}

	@RequestMapping(value = "/28_User_stasis.do", method = RequestMethod.GET)
	public ModelAndView User_stasis(Model model) {

		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); // 검색어
		int nowPage = webHelper.getInt("page", 1); // 페이지 번호 (기본값 1)
		int totalCount = 0; 	// 전체 게시글 수
		int listCount = 5; 		// 한 페이지당 표시할 목록 수
		int pageCount = 5; 		// 한 그룹당 표시할 페이지 번호 수

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Member input = new Member();
		input.setName(keyword);

		List<Member> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

		try {
			// 전체 게시글 수 조회
			totalCount = memberService.getMemberCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Member.setOffset(pageData.getOffset());
			Member.setListCount(pageData.getListCount());
			 
			// 데이터 조회하기
			output = memberService.getMemberList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		model.addAttribute("output", output);
		model.addAttribute("keyword", keyword);
		model.addAttribute("pageData", pageData);

		return new ModelAndView("28_User_stasis");
	}
}

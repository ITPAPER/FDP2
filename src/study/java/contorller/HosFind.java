package study.java.contorller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.json.JSONObject;

import study.java.dao.HosDao;
import study.java.dao.impl.HosDaoImpl;
import study.java.model.HospitalItem;

@WebServlet("/api/myhos.do")
public class HosFind extends HttpServlet {
	private static final long serialVersionUID = 6831294358796002762L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		HosDao dao = new HosDaoImpl();
		
		String subj = request.getParameter("subject");
		String gu = request.getParameter("data");
		String txt = request.getParameter("dong");
		System.out.println(subj);
		System.out.println(gu);
		System.out.println(txt);
		
		
		List<HospitalItem> list =  dao.getHosList(subj, gu, txt);
		
		
		
		JSONObject json = new JSONObject();
		json.put("items", list);
		response.getWriter().print(json);
		
	}

	
}

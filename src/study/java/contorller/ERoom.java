package study.java.contorller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.json.JSONObject;

import study.java.dao.ErDao;
import study.java.dao.impl.ErDaoImpl;
import study.java.model.ErItem;

@WebServlet("/api/eroom.do")
public class ERoom extends HttpServlet {
	private static final long serialVersionUID = 8116286722229613235L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		ErDao dao = new ErDaoImpl();
		String type = request.getParameter("data");
		
		List<ErItem> list =  dao.getErList(type);
		
		
		
		JSONObject json = new JSONObject();
		json.put("items", list);
		response.getWriter().print(json);
		
	}

	
}

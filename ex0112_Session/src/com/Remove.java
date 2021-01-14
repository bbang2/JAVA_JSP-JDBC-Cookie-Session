package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Remove")
public class Remove extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		// 세션을 만료하는 법은 2가지
		// 1. client의 세션을 아예 전체 삭제하는 방법
		//session.invalidate();
		// 2. client의 원하는 이름만 찾아서 삭제하는 방법
		session.removeAttribute("info");
		
		response.sendRedirect("start.html");
		
		
	}

}

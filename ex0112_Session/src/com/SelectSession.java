package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SelectSession")
public class SelectSession extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		// 세션안에 저장된 값은 object타입이라
		// 다시 String으로 강제형변환(다운캐스팅)해줘야함
		String name = (String)session.getAttribute("name");
		System.out.println(name);
		
		
	}

}

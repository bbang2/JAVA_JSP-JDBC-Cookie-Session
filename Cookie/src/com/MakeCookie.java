package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MakeCookie")
public class MakeCookie extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Cookie cookie = new Cookie("id", "pbk");
		// 괄호안은 문자열 텍스트 영어로만 써야함
		
		cookie.setMaxAge(365 * 24 * 60 * 60);
		
		response.addCookie(cookie);
		
		
		
	}

}

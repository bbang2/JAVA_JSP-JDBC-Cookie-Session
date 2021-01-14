package com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteCookie")
public class DeleteCookie extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 삭제하는 건 따로 없지만 같은 이름의 쿠키를 만들면 덮어씌워짐
		// 나이가 0살인 같은 이름의 쿠키를 만들어 덮어씌우자
		
		Cookie cookie = new Cookie("id","");
		
		cookie.setMaxAge(0);
		
		response.addCookie(cookie);
		
	}

}

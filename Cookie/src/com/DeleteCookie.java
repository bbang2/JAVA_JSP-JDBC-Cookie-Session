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
		
		// �����ϴ� �� ���� ������ ���� �̸��� ��Ű�� ����� �������
		// ���̰� 0���� ���� �̸��� ��Ű�� ����� �������
		
		Cookie cookie = new Cookie("id","");
		
		cookie.setMaxAge(0);
		
		response.addCookie(cookie);
		
	}

}

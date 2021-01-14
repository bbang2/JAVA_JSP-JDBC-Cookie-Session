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
		
		// ������ �����ϴ� ���� 2����
		// 1. client�� ������ �ƿ� ��ü �����ϴ� ���
		//session.invalidate();
		// 2. client�� ���ϴ� �̸��� ã�Ƽ� �����ϴ� ���
		session.removeAttribute("info");
		
		response.sendRedirect("start.html");
		
		
	}

}

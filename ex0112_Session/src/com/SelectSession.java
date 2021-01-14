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
		
		// ���Ǿȿ� ����� ���� objectŸ���̶�
		// �ٽ� String���� ��������ȯ(�ٿ�ĳ����)�������
		String name = (String)session.getAttribute("name");
		System.out.println(name);
		
		
	}

}

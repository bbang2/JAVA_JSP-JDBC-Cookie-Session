package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Info")
public class Info extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// �̸�, ����, ��ȭ��ȣ ���ǿ� ����
		// MemberDTOŬ���� �����
		MemberDTO dto1 = new MemberDTO("�ں���", 20, "010-1111-2222");
		
		// dto1 �� ������ ���ǿ� info��� �̸����� �����Ͻÿ�
		HttpSession session = request.getSession();
		
		// ���ǿ� ���� �߰�
		session.setMaxInactiveInterval(10);
		
		session.setAttribute("info", dto1);
		
		response.sendRedirect("view.jsp");
	}

}

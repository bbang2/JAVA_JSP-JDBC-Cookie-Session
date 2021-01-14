package com;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	// ���⼭ Id, Pw, name���� �����ͼ� ȸ�������� �ϰ�
		// �����ϸ� joinsuccess.jsp
		// �����ϸ� joinFail.jsp
		
		//�� �޾ƿ���
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		String nick = request.getParameter("nick"); 
		
		MemberVO vo = new MemberVO(id, pw, nick);
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(vo);
		
		
		
		// ȸ������ ����/���п��ο� ���� �ٸ������� �����ֱ�
		if (cnt >0){
			System.out.println("ȸ������ ����");
			response.sendRedirect("ex01_joinSuccess.jsp?name="+URLEncoder.encode(nick,"EUC-KR"));
			// ?: url�� ���� �˸��鼭 ������ǥ���� �������� �˸��� ��ȣ
		}else {
			System.out.println("ȸ������ ����");
			response.sendRedirect("ex01_joinFail.jsp");
		}
	
	}

}

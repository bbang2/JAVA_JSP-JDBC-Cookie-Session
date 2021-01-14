package com;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO(id, pw);
		
		String nickname = dao.login(vo);

		
		
		if (nickname != null){
			System.out.println("�α��� ����");
			// �α��� ���� �� session�� nick�̶�� �̸����� �г����� �����Ͻÿ�
			HttpSession session = request.getSession();
			session.setAttribute("nick", nickname);
			
			response.sendRedirect("ex02_loginSuccess.jsp");
			
		}else {
			System.out.println("�α��� ����");
			response.sendRedirect("ex02_loginFail.jsp");
		}
	
	}

}

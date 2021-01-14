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

	// 여기서 Id, Pw, name값을 가져와서 회원가입을 하고
		// 성공하면 joinsuccess.jsp
		// 실패하면 joinFail.jsp
		
		//값 받아오기
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		String nick = request.getParameter("nick"); 
		
		MemberVO vo = new MemberVO(id, pw, nick);
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(vo);
		
		
		
		// 회원가입 성공/실패여부에 따라 다른페이지 보여주기
		if (cnt >0){
			System.out.println("회원가입 성공");
			response.sendRedirect("ex01_joinSuccess.jsp?name="+URLEncoder.encode(nick,"EUC-KR"));
			// ?: url의 끝을 알리면서 데이터표현의 시작점을 알리는 기호
		}else {
			System.out.println("회원가입 실패");
			response.sendRedirect("ex01_joinFail.jsp");
		}
	
	}

}

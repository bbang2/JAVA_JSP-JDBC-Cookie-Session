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
		
		// 이름, 나이, 전화번호 세션에 저장
		// MemberDTO클래스 만들기
		MemberDTO dto1 = new MemberDTO("박병관", 20, "010-1111-2222");
		
		// dto1 내 정보를 세션에 info라는 이름으로 저장하시오
		HttpSession session = request.getSession();
		
		// 세션에 나이 추가
		session.setMaxInactiveInterval(10);
		
		session.setAttribute("info", dto1);
		
		response.sendRedirect("view.jsp");
	}

}

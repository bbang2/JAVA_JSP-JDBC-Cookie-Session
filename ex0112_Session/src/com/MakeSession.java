package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MakeSession")
public class MakeSession extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = "박병관";
		
		HttpSession session = request.getSession();
		
		// 세션 저장
		session.setAttribute("name", name);
		// String타입의 name을 넣어도 object형태로 업캐스팅되어 저장됨
		// Why? >> 다양한 값을 저장할 수 있어서
		
		// 다른 자료형 object형태로 변환
/*		int num1 = 10;
		Integer num2 = new Integer(num1);
		
		double dnum1=20.6;
		Double dnum2=new Double(dnum1);
		*/
	}

}

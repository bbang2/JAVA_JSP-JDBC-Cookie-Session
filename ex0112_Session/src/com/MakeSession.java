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
		
		String name = "�ں���";
		
		HttpSession session = request.getSession();
		
		// ���� ����
		session.setAttribute("name", name);
		// StringŸ���� name�� �־ object���·� ��ĳ���õǾ� �����
		// Why? >> �پ��� ���� ������ �� �־
		
		// �ٸ� �ڷ��� object���·� ��ȯ
/*		int num1 = 10;
		Integer num2 = new Integer(num1);
		
		double dnum1=20.6;
		Double dnum2=new Double(dnum1);
		*/
	}

}

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> Page1 �Դϴ�. </h1>

	<%
		pageContext.setAttribute("page", "������ �� ����");
		request.setAttribute("request", "������Ʈ �� ����");
		session.setAttribute("session", "���ǰ� ����");
		application.setAttribute("application", "���ø����̼� �� ����");
	%>
	
	<%
		String pageValue = (String)pageContext.getAttribute("page");
		String requestValue = (String)request.getAttribute("request");
		String sessionValue = (String)session.getAttribute("session");
		String applicationValue = (String)application.getAttribute("application");
	%>
	
	page �� : <%= pageValue %><br>
	request �� : <%= requestValue %><br>
	session �� : <%= sessionValue %><br>
	application �� : <%= applicationValue %>

	<%-- <% response.sendRedirect("Page2.jsp"); %> --%>
	<!-- forword ���  -->
	<%
		// ��� ����
		RequestDispatcher dis = request.getRequestDispatcher("Page2.jsp");
		// ������ �̵�
		// �������� �̵��� �� ���� �ȿ� �ִ� request�� response�� ������
		dis.forward(request, response);
	
	
	%>
	
	
</body>
</html>
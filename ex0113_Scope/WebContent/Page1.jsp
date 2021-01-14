<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> Page1 입니다. </h1>

	<%
		pageContext.setAttribute("page", "페이지 값 존재");
		request.setAttribute("request", "리퀘스트 값 존재");
		session.setAttribute("session", "세션값 존재");
		application.setAttribute("application", "어플리케이션 값 존재");
	%>
	
	<%
		String pageValue = (String)pageContext.getAttribute("page");
		String requestValue = (String)request.getAttribute("request");
		String sessionValue = (String)session.getAttribute("session");
		String applicationValue = (String)application.getAttribute("application");
	%>
	
	page 값 : <%= pageValue %><br>
	request 값 : <%= requestValue %><br>
	session 값 : <%= sessionValue %><br>
	application 값 : <%= applicationValue %>

	<%-- <% response.sendRedirect("Page2.jsp"); %> --%>
	<!-- forword 방식  -->
	<%
		// 경로 설정
		RequestDispatcher dis = request.getRequestDispatcher("Page2.jsp");
		// 페이지 이동
		// 페이지를 이동할 땐 현재 안에 있는 request와 response를 보내줌
		dis.forward(request, response);
	
	
	%>
	
	
</body>
</html>
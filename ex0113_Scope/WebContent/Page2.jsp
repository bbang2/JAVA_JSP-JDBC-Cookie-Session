<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> Page2 �Դϴ�. </h1>

	
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

	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> Page2 입니다. </h1>

	
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

	
</body>
</html>
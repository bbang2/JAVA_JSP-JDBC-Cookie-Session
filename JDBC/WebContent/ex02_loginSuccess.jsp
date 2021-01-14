<%@page import="java.sql.ResultSet"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//get방식으로 꺼냈을 때
 	//String getnick = request.getParameter("name");
	
	//세션으로 꺼낼 때(jsp에서 세션은 내장객체로 존재함)
	String getnick = (String)session.getAttribute("nick");
%>
<h1> <%= getnick %>님! <br>
	환영합니다 로그인성공!</h1>

</body>
</html>
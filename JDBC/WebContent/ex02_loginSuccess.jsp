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
	//get������� ������ ��
 	//String getnick = request.getParameter("name");
	
	//�������� ���� ��(jsp���� ������ ���尴ü�� ������)
	String getnick = (String)session.getAttribute("nick");
%>
<h1> <%= getnick %>��! <br>
	ȯ���մϴ� �α��μ���!</h1>

</body>
</html>
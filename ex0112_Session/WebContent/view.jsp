<%@page import="com.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- ���ǿ��� �� ���� �����ͼ� jsp�� ����ּ��� -->
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("info");
	
	// ������ ���޾ƿ��� ������������ ������ - 500�����߸� �ڵ���ŷ����
	if (dto == null){
		response.sendRedirect("start.html");
	}else{


	//String name = dto.getName();
	//int age = dto.getAge();
	//String phone = dto.getPhone();
%>

	<p> �̸� : <%= dto.getName() %></p>
	<p> ���� : <%= dto.getAge() %></p>
	<p> ��ȭ��ȣ : <%= dto.getPhone() %></p>
	
	<a href = "Remove">
	<button> ��������� </button>
	</a>
	<% } %>
	
	
</body>
</html>
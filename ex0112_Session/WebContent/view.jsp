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

	<!-- 세션에서 내 정보 가져와서 jsp에 띄워주세요 -->
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("info");
	
	// 세션을 못받아오면 시작페이지로 돌려줌 - 500에러뜨면 코드해킹당함
	if (dto == null){
		response.sendRedirect("start.html");
	}else{


	//String name = dto.getName();
	//int age = dto.getAge();
	//String phone = dto.getPhone();
%>

	<p> 이름 : <%= dto.getName() %></p>
	<p> 나이 : <%= dto.getAge() %></p>
	<p> 전화번호 : <%= dto.getPhone() %></p>
	
	<a href = "Remove">
	<button> 정보지우기 </button>
	</a>
	<% } %>
	
	
</body>
</html>
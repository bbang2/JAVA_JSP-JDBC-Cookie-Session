<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	tr{
		height : 50px;
	}td{
		align:"left"; width:250px;
	}
</style>
</head>
<body>

	<% String name = request.getParameter("name"); %>
	<% String sc1 = request.getParameter("sc1"); %>
	<% String sc2 = request.getParameter("sc2"); %>
	<% String sc3 = request.getParameter("sc3"); %>
	<% String sc4 = request.getParameter("sc4"); %>
	
	<% int a = Integer.parseInt(sc1); %>
	<% int b = Integer.parseInt(sc2); %>
	<% int c = Integer.parseInt(sc3); %>
	<% int d = Integer.parseInt(sc4); %>
	
	<% int avg = (a+b+c+d)/4;
		String grade = ""; 
	 	if (95<= avg && avg<=100){
	 		grade = "A+";
	 	}else if(85<=avg && avg<=94){
	 		grade = "A";
	 	}else if(80<=avg && avg<=84){
	 		grade = "B+";
	 	}else if(70<=avg && avg<=79){
	 		grade = "C";
	 	}else{
	 		grade = "F";
	 	}
	%>
	<fieldset>
	<legend> ����Ȯ�� ���α׷�</legend>
	<table align="center">
	<tr >
	<td> �̸� </td>
	<td > <%= name %> </td> </tr>
	<tr>
	<td> JAVA���� </td>
	<td> <%= sc1 %> </td> </tr>
	<tr>
	<td> WEB���� </td>
	<td> <%= sc2 %> </td> </tr>
	<tr>
	<td> IOT���� </td>
	<td> <%=  sc3 %> </td> </tr>
	<tr>
	<td> ANDROID���� </td>
	<td> <%= sc4 %></td> </tr>
	<tr>
	<td> ��� </td>
	<td> <%=  avg %> </td> </tr>
	<tr>
	<td> ���� </td>
	<td><b> <%= grade %> </b></td> </tr>
	
	</table>
	</fieldset>

</body>
</html>
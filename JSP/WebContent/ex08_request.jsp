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
	<legend> 학점확인 프로그램</legend>
	<table align="center">
	<tr >
	<td> 이름 </td>
	<td > <%= name %> </td> </tr>
	<tr>
	<td> JAVA점수 </td>
	<td> <%= sc1 %> </td> </tr>
	<tr>
	<td> WEB점수 </td>
	<td> <%= sc2 %> </td> </tr>
	<tr>
	<td> IOT점수 </td>
	<td> <%=  sc3 %> </td> </tr>
	<tr>
	<td> ANDROID점수 </td>
	<td> <%= sc4 %></td> </tr>
	<tr>
	<td> 평균 </td>
	<td> <%=  avg %> </td> </tr>
	<tr>
	<td> 학점 </td>
	<td><b> <%= grade %> </b></td> </tr>
	
	</table>
	</fieldset>

</body>
</html>
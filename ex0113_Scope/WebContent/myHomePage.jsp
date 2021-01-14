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
		String count = (String) application.getAttribute("count");
    	if (count == null) {
       		application.setAttribute("count", "1");
    	} else {
       		int people = Integer.parseInt(count);
       		people++;
       		application.setAttribute("count", people + "");
    	}
    	count = (String)application.getAttribute(count);
	
	%>
	오늘 방문자 수 : <%= count %>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%! public String cal(int a, int b, String opr){
			int result=0;
			if (opr.equals("+")){
				result = a+b;
			}else if (opr.equals("-")){
				result = a-b;
			}else if (opr.equals("*")){
				result = a*b;
			}else if (opr.equals("/")){
				result = a/b;
			}return a+opr+b+"="+result;
		}
		%>
	<%= cal(10,2,"+")%><br>
	<%= cal(10,2,"-")%><br>
	<%= cal(10,2,"*")%><br>
	<%= cal(10,2,"/")%><br>
	

</body>
</html>
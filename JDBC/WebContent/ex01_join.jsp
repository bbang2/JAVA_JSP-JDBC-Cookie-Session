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
	// 값 받아오기
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw"); 
	String nick = request.getParameter("nick"); 
	
	// class 찾기 - java와 DB 사이에 통로를 만들어 준다 >> 동적로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//DB에 로그인할 주소, 아이디, 패스워드
	//New Oracle에서 우클릭, properties, driver에서 url긁어오기
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "hr";
	String dbpw = "hr";
	
	//Connection : 데이터베이스를 열 수 있는 카드키
	Connection conn = DriverManager.getConnection(url, dbid, dbpw);
	
	//sql문 작성
	String sql = "insert into member2 values(?,?,?)";
	
	//PrepareStatement 객체 : sql 구문실행
	PreparedStatement psmt = conn.prepareStatement(sql);
	
	// ?에 값넣기
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, nick);
	
	// executeQuery : 수행결과로 resultset객체의 값을 반환, select구문을 수행할 때 사용되는 메소드
	// executeUpdate : 수행결과로 int 타입의 값을 반환,
	//					select 구문을 제외한 다른 구문을 수행할 때 사용되는 메소드
	int cnt = psmt.executeUpdate();
	
	// 닫아주기
	if (psmt != null){
		psmt.close();
	}if (conn != null){
		conn.close();
	}
	
	// 회원가입 성공/실패여부에 따라 다른페이지 보여주기
	if (cnt >0){
		System.out.println("회원가입 성공");
		response.sendRedirect("ex01_joinSuccess.jsp?name="+URLEncoder.encode(nick,"EUC-KR"));
		// ?: url의 끝을 알리면서 데이터표현의 시작점을 알리는 기호
	}else {
		System.out.println("회원가입 실패");
		response.sendRedirect("ex01_joinFail.jsp");
	}
%>


</body>
</html>
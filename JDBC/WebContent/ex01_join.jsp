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
	// �� �޾ƿ���
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw"); 
	String nick = request.getParameter("nick"); 
	
	// class ã�� - java�� DB ���̿� ��θ� ����� �ش� >> �����ε�
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//DB�� �α����� �ּ�, ���̵�, �н�����
	//New Oracle���� ��Ŭ��, properties, driver���� url�ܾ����
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "hr";
	String dbpw = "hr";
	
	//Connection : �����ͺ��̽��� �� �� �ִ� ī��Ű
	Connection conn = DriverManager.getConnection(url, dbid, dbpw);
	
	//sql�� �ۼ�
	String sql = "insert into member2 values(?,?,?)";
	
	//PrepareStatement ��ü : sql ��������
	PreparedStatement psmt = conn.prepareStatement(sql);
	
	// ?�� ���ֱ�
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, nick);
	
	// executeQuery : �������� resultset��ü�� ���� ��ȯ, select������ ������ �� ���Ǵ� �޼ҵ�
	// executeUpdate : �������� int Ÿ���� ���� ��ȯ,
	//					select ������ ������ �ٸ� ������ ������ �� ���Ǵ� �޼ҵ�
	int cnt = psmt.executeUpdate();
	
	// �ݾ��ֱ�
	if (psmt != null){
		psmt.close();
	}if (conn != null){
		conn.close();
	}
	
	// ȸ������ ����/���п��ο� ���� �ٸ������� �����ֱ�
	if (cnt >0){
		System.out.println("ȸ������ ����");
		response.sendRedirect("ex01_joinSuccess.jsp?name="+URLEncoder.encode(nick,"EUC-KR"));
		// ?: url�� ���� �˸��鼭 ������ǥ���� �������� �˸��� ��ȣ
	}else {
		System.out.println("ȸ������ ����");
		response.sendRedirect("ex01_joinFail.jsp");
	}
%>


</body>
</html>
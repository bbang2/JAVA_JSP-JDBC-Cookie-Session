<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
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
	String nickname = "";

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
	String sql = "select * from member2 where id=? and pw=?";
	
	//PrepareStatement ��ü : sql ��������
	PreparedStatement psmt = conn.prepareStatement(sql);
	
	// ?�� ���ֱ�
	psmt.setString(1, id);
	psmt.setString(2, pw);
	
	// executeQuery : �������� resultset��ü�� ���� ��ȯ, select������ ������ �� ���Ǵ� �޼ҵ�
	// executeUpdate : �������� int Ÿ���� ���� ��ȯ,
	//					select ������ ������ �ٸ� ������ ������ �� ���Ǵ� �޼ҵ�
	ResultSet rs = psmt.executeQuery();
	
	if (rs.next()){
		nickname = rs.getString("nick");
	}
	
	// �ݾ��ֱ�
	if (psmt != null){
		psmt.close();
	}if (conn != null){
		conn.close();
	}if (rs != null){
		rs.close();
	}
	
	// ȸ������ ����/���п��ο� ���� �ٸ������� �����ֱ�
	if (nickname != null){
		System.out.println("�α��� ����");
		response.sendRedirect("ex01_loginSuccess.jsp?name="+URLEncoder.encode(nickname,"EUC-KR"));
		// ?: url�� ���� �˸��鼭 ������ǥ���� �������� �˸��� ��ȣ
	}else {
		System.out.println("�α��� ����");
		response.sendRedirect("ex01_loginFail.jsp");
	}
%>


</body>
</html>
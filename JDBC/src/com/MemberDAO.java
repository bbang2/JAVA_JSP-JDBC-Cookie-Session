package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	
	// 필드안의 값은 자동으로 null값이 들어감
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private void getConnection() {
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		
		try {
			if (rs != null) {
                  rs.close();
               }
             if (psmt != null) {
                  psmt.close();
               }
             if (conn != null) {
                  conn.close();
               }
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	
	
	public int join(MemberVO vo) {
		
		int cnt=0;
		
		try {
			getConnection();
			
			String sql = "insert into member2 values(?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPw());
			psmt.setString(3, vo.getNick());
			cnt = psmt.executeUpdate();
			
		} catch ( SQLException e) {
			e.printStackTrace();
			
		}finally {
			close();
			}return cnt;
		
		
	}

	public String login(MemberVO vo) {
		
		String nickname = null;
		
		try {
			getConnection();
			
			String sql = "select * from member2 where id=? and pw=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPw());
			
			rs = psmt.executeQuery();
			
			if (rs.next()){
				nickname = rs.getString("nick");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally {
			close();
		}

		return nickname;
	}

}

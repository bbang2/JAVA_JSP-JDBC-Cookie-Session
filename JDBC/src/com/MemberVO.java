package com;

public class MemberVO {

	private String id;
	private String pw;
	private String nick;
	
	// 사용자정의 생성자 만들기
	public MemberVO(String id, String pw, String nick) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
	}
	
	public MemberVO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}





	//게터세터 메소드 만들기
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	
	
}

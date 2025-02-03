package com.tkheat.domain;

public class Users {

	//tb_user테이블
	private String user_id;
	private String user_pw;
	private String user_name;	//이름
	private String user_level;	//등급
	private String user_yn;
	
	//tb_menu테이블
	private String menu_name;
	private String menu_url;
	private String menu_regdate;
	private String menu_yn;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_level() {
		return user_level;
	}
	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	public String getUser_yn() {
		return user_yn;
	}
	public void setUser_yn(String user_yn) {
		this.user_yn = user_yn;
	}
	
	//메뉴
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_url() {
		return menu_url;
	}
	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}
	public String getMenu_regdate() {
		return menu_regdate;
	}
	public void setMenu_regdate(String menu_regdate) {
		this.menu_regdate = menu_regdate;
	}
	public String getMenu_yn() {
		return menu_yn;
	}
	public void setMenu_yn(String menu_yn) {
		this.menu_yn = menu_yn;
	}
	
}

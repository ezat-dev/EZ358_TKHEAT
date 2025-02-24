package com.tkheat.domain;

public class Users {

	//tb_user테이블
	private String user_code;
	private String user_eNum;
	private String user_id;
	private String user_pw;
	private String user_name;	//이름
	private String user_level;	//등급
	private String user_team;
	private String user_job;
	private String user_yn;
	
	//tb_menu테이블
	private String menu_name;
	private String menu_url;
	private String menu_regdate;
	private String menu_yn;
	
	//메뉴 탭 정보
	private int tab_idx;
	private String tab_id;
	
	//tb_page
	private String page_code;
	private String page_big;
	private String page_sml;
	private String page_big_name;
	private String page_sml_name;
	private String page_yn;
	
	
	

	
	public String getPage_sml() {
		return page_sml;
	}
	public void setPage_sml(String page_sml) {
		this.page_sml = page_sml;
	}
	public String getPage_code() {
		return page_code;
	}
	public void setPage_code(String page_code) {
		this.page_code = page_code;
	}
	public String getPage_big() {
		return page_big;
	}
	public void setPage_big(String page_big) {
		this.page_big = page_big;
	}
	public String getPage_big_name() {
		return page_big_name;
	}
	public void setPage_big_name(String page_big_name) {
		this.page_big_name = page_big_name;
	}
	public String getPage_sml_name() {
		return page_sml_name;
	}
	public void setPage_sml_name(String page_sml_name) {
		this.page_sml_name = page_sml_name;
	}
	public String getPage_yn() {
		return page_yn;
	}
	public void setPage_yn(String page_yn) {
		this.page_yn = page_yn;
	}
	public String getUser_code() {
		return user_code;
	}
	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	public String getUser_eNum() {
		return user_eNum;
	}
	public void setUser_eNum(String user_eNum) {
		this.user_eNum = user_eNum;
	}
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
	public String getUser_team() {
		return user_team;
	}
	public void setUser_team(String user_team) {
		this.user_team = user_team;
	}
	public String getUser_job() {
		return user_job;
	}
	public void setUser_job(String user_job) {
		this.user_job = user_job;
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
	
	public int getTab_idx() {
		return tab_idx;
	}
	public void setTab_idx(int tab_idx) {
		this.tab_idx = tab_idx;
	}
	public String getTab_id() {
		return tab_id;
	}
	public void setTab_id(String tab_id) {
		this.tab_id = tab_id;
	}
	
}

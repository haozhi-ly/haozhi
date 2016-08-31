package com.haozhi.entity;
/**
 * 管理员信息
 * @author admin
 *
 */
public class Admin {
	private int aid;
	private String aname;
	private String email;
	private String apassword;
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public Admin() {
	}

	public Admin(int aid, String aname, String email, String apassword,
			String temp01, String temp02, String temp03) {
		this.aid = aid;
		this.aname = aname;
		this.email = email;
		this.apassword = apassword;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	public String getTemp01() {
		return temp01;
	}

	public void setTemp01(String temp01) {
		this.temp01 = temp01;
	}

	public String getTemp02() {
		return temp02;
	}

	public void setTemp02(String temp02) {
		this.temp02 = temp02;
	}

	public String getTemp03() {
		return temp03;
	}

	public void setTemp03(String temp03) {
		this.temp03 = temp03;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", email=" + email
				+ ", apassword=" + apassword + ", temp01=" + temp01
				+ ", temp02=" + temp02 + ", temp03=" + temp03 + "]";
	}

}

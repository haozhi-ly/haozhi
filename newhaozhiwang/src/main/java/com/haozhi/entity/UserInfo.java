package com.haozhi.entity;

import java.io.Serializable;

/**
 * 用户信息
 * @author admin
 *
 */
public class UserInfo implements Serializable {
	private static final long serialVersionUID = 3945675989523219499L;
	private int userid;
	private String uname;
	private String email;
	private String upassword;
	private String gender;
	private String photo;
	private String usign;
	private String introdution;
	private int status;
	private int score;
	private String signDate;// --签到
	private String temp02; // --备用字段
	private String temp03;// --备用字段

	public UserInfo() {
	}

	public UserInfo(int userid, String uname, String email, String upassword,
			String gender, String photo, String usign, String introdution,
			int status, int score, String signDate, String temp02, String temp03) {
		this.userid = userid;
		this.uname = uname;
		this.email = email;
		this.upassword = upassword;
		this.gender = gender;
		this.photo = photo;
		this.usign = usign;
		this.introdution = introdution;
		this.status = status;
		this.score = score;
		this.signDate = signDate;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getUsign() {
		return usign;
	}

	public void setUsign(String usign) {
		this.usign = usign;
	}

	public String getIntrodution() {
		return introdution;
	}

	public void setIntrodution(String introdution) {
		this.introdution = introdution;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getSignDate() {
		return signDate;
	}

	public void setSignDate(String signDate) {
		this.signDate = signDate;
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
		return "UserInfo [userid=" + userid + ", uname=" + uname + ", email="
				+ email + ", upassword=" + upassword + ", gender=" + gender
				+ ", photo=" + photo + ", usign=" + usign + ", introdution="
				+ introdution + ", status=" + status + ", score=" + score
				+ ", signDate=" + signDate + ", temp02=" + temp02 + ", temp03="
				+ temp03 + "]";
	}

}

package com.haozhi.entity;

/**
 * 关注表
 * @author admin
 *
 */
public class Attention {
	private int atid;
	private int attention;// -- 被关注的人 用户id(外键)
	private int userid;// -- 关注发起者 用户id(外键)
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段
	private UserInfo user;
	
	public Attention() {
	}

	public Attention(int atid, int attention, int userid, String temp01,
			String temp02, String temp03) {
		this.atid = atid;
		this.attention = attention;
		this.userid = userid;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public int getAtid() {
		return atid;
	}

	public void setAtid(int atid) {
		this.atid = atid;
	}

	public int getAttention() {
		return attention;
	}

	public void setAttention(int attention) {
		this.attention = attention;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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

	
	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "\nAttention [atid=" + atid + ", attention=" + attention
				+ ", userid=" + userid + ", temp01=" + temp01 + ", temp02="
				+ temp02 + ", temp03=" + temp03 +
				",user="+user+"]";
	}

}

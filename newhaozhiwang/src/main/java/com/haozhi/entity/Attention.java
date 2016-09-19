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
	private int sreadstatus;


	public Attention() {
	}

	

	public Attention(int atid, int attention, int userid, int sreadstatus) {
		super();
		this.atid = atid;
		this.attention = attention;
		this.userid = userid;
		this.sreadstatus = sreadstatus;
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


	public int getSreadstatus() {
		return sreadstatus;
	}


	public void setSreadstatus(int sreadstatus) {
		this.sreadstatus = sreadstatus;
	}

	@Override
	public String toString() {
		return "Attention [atid=" + atid + ", attention=" + attention + ", userid=" + userid + ", sreadstatus="
				+ sreadstatus + "]";
	}
	
	

	
}

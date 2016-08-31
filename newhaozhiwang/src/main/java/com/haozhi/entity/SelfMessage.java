package com.haozhi.entity;

//私信表  or   留言表
public class SelfMessage {
	private int smid;
	private int sendman;// --发信人
	private int receiveman;// --收信人
	private String scontent;
	private String smtime;// --发信时间
	private int sendType;// ---(0/1,o:代表留言，1：代表私信)
	private int sreadstatus;// --0或1表示未读或已读
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public SelfMessage() {
	}

	public SelfMessage(int smid, int sendman, int receiveman, String scontent,
			String smtime, int sendType, int sreadstatus, String temp01,
			String temp02, String temp03) {
		this.smid = smid;
		this.sendman = sendman;
		this.receiveman = receiveman;
		this.scontent = scontent;
		this.smtime = smtime;
		this.sendType = sendType;
		this.sreadstatus = sreadstatus;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public int getSmid() {
		return smid;
	}

	public void setSmid(int smid) {
		this.smid = smid;
	}

	public int getSendman() {
		return sendman;
	}

	public void setSendman(int sendman) {
		this.sendman = sendman;
	}

	public int getReceiveman() {
		return receiveman;
	}

	public void setReceiveman(int receiveman) {
		this.receiveman = receiveman;
	}

	public String getScontent() {
		return scontent;
	}

	public void setScontent(String scontent) {
		this.scontent = scontent;
	}

	public String getSmtime() {
		return smtime;
	}

	public void setSmtime(String smtime) {
		this.smtime = smtime;
	}

	public int getSendType() {
		return sendType;
	}

	public void setSendType(int sendType) {
		this.sendType = sendType;
	}

	public int getSreadstatus() {
		return sreadstatus;
	}

	public void setSreadstatus(int sreadstatus) {
		this.sreadstatus = sreadstatus;
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
		return "SelfMessage [smid=" + smid + ", sendman=" + sendman
				+ ", receiveman=" + receiveman + ", scontent=" + scontent
				+ ", smtime=" + smtime + ", sendType=" + sendType
				+ ", sreadstatus=" + sreadstatus + ", temp01=" + temp01
				+ ", temp02=" + temp02 + ", temp03=" + temp03 + "]";
	}

}

package com.haozhi.entity;

/**
 * 课程提问
 * @author admin
 */
public class CourseQuestion {
	private int cqid;
	private int userid;// --提问人 用户id(外键)
	private int cmid;// --课时id(外键)
	private String cqcontent;// --提问内容
	private String cqtime;// --提问时间
	private int cqview;// ---浏览次数
	private int qreadstatus;// --0或1表示未读或已读
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public CourseQuestion() {
	}

	public CourseQuestion(int cqid, int userid, int cmid, String cqcontent,
			String cqtime, int cqview, int qreadstatus, String temp01,
			String temp02, String temp03) {
		this.cqid = cqid;
		this.userid = userid;
		this.cmid = cmid;
		this.cqcontent = cqcontent;
		this.cqtime = cqtime;
		this.cqview = cqview;
		this.qreadstatus = qreadstatus;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public int getCqid() {
		return cqid;
	}

	public void setCqid(int cqid) {
		this.cqid = cqid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getCmid() {
		return cmid;
	}

	public void setCmid(int cmid) {
		this.cmid = cmid;
	}

	public String getCqcontent() {
		return cqcontent;
	}

	public void setCqcontent(String cqcontent) {
		this.cqcontent = cqcontent;
	}

	public String getCqtime() {
		return cqtime;
	}

	public void setCqtime(String cqtime) {
		this.cqtime = cqtime;
	}

	public int getCqview() {
		return cqview;
	}

	public void setCqview(int cqview) {
		this.cqview = cqview;
	}

	public int getQreadstatus() {
		return qreadstatus;
	}

	public void setQreadstatus(int qreadstatus) {
		this.qreadstatus = qreadstatus;
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
		return "CourseQuestion [cqid=" + cqid + ", userid=" + userid
				+ ", cmid=" + cmid + ", cqcontent=" + cqcontent + ", cqtime="
				+ cqtime + ", cqview=" + cqview + ", qreadstatus="
				+ qreadstatus + ", temp01=" + temp01 + ", temp02=" + temp02
				+ ", temp03=" + temp03 + "]";
	}

}

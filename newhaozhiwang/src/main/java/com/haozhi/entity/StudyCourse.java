package com.haozhi.entity;

/**
 * 学习课程表
 * @author admin
 */
public class StudyCourse {
	private int scid;
	private int userid;
	private int courseid;
	private String begintime;// ----加入时间
	private int assess;// ---评价等级（1~5星）
	private String studyPeriod;// ---已学习的课时（拼接（可做学习进度）
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public StudyCourse() {
	}

	public StudyCourse(int scid, int userid, int courseid, String begintime,
			int assess, String studyPeriod, String temp01, String temp02,
			String temp03) {
		this.scid = scid;
		this.userid = userid;
		this.courseid = courseid;
		this.begintime = begintime;
		this.assess = assess;
		this.studyPeriod = studyPeriod;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public int getScid() {
		return scid;
	}

	public void setScid(int scid) {
		this.scid = scid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public String getBegintime() {
		return begintime;
	}

	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}

	public int getAssess() {
		return assess;
	}

	public void setAssess(int assess) {
		this.assess = assess;
	}

	public String getStudyPeriod() {
		return studyPeriod;
	}

	public void setStudyPeriod(String studyPeriod) {
		this.studyPeriod = studyPeriod;
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
		return "StudyCourse [scid=" + scid + ", userid=" + userid
				+ ", courseid=" + courseid + ", begintime=" + begintime
				+ ", assess=" + assess + ", studyPeriod=" + studyPeriod
				+ ", temp01=" + temp01 + ", temp02=" + temp02 + ", temp03="
				+ temp03 + "]";
	}

}

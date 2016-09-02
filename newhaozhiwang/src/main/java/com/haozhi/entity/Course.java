package com.haozhi.entity;

import java.io.Serializable;

/**
 * 课程信息
 * @author admin
 *
 */
public class Course implements Serializable{
	
	private static final long serialVersionUID = 8705965992116136650L;
	private int courseid;
	private String ctitle;// --标题
	private String cintrodution;// --课程简介
	private Integer ctid; // --课程类别（外键）
	private String courseting;// --应用于课程关键字搜索
	private String coursephoto;// --课程图片
	private int userId;// --外键 课程的创建者
	private int cview;// --浏览量
	private String createTime;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段
	private int memberCount;  //--课程总人员
	private double assessAvg;  //--课程评分
	private UserInfo user;  // 用户

	public Course() {
	}

	public Course(String ctitle, String cintrodution, Integer ctid,
			String courseting, String coursephoto, int userId, int cview,
			String createTime, String temp02, String temp03) {
		this.ctitle = ctitle;
		this.cintrodution = cintrodution;
		this.ctid = ctid;
		this.courseting = courseting;
		this.coursephoto = coursephoto;
		this.userId = userId;
		this.cview = cview;
		this.createTime = createTime;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}
	

	public Course(String ctitle, String cintrodution, int ctid, String courseting, String coursephoto, int userId) {
		super();
		this.ctitle = ctitle;
		this.cintrodution = cintrodution;
		this.ctid = ctid;
		this.courseting = courseting;
		this.coursephoto = coursephoto;
		this.userId = userId;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCintrodution() {
		return cintrodution;
	}

	public void setCintrodution(String cintrodution) {
		this.cintrodution = cintrodution;
	}

	public int getCtid() {
		return ctid;
	}

	public void setCtid(Integer ctid) {
		this.ctid = ctid;
	}

	public String getCourseting() {
		return courseting;
	}

	public void setCourseting(String courseting) {
		this.courseting = courseting;
	}

	public String getCoursephoto() {
		return coursephoto;
	}

	public void setCoursephoto(String coursephoto) {
		this.coursephoto = coursephoto;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCview() {
		return cview;
	}

	public void setCview(int cview) {
		this.cview = cview;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
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

	public int getMemberCount() {
		return memberCount;
	}

	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}

	public double getAssessAvg() {
		return assessAvg;
	}

	public void setAssessAvg(double assessAvg) {
		this.assessAvg = assessAvg;
	}
	
	


	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Course [courseid=" + courseid + ", ctitle=" + ctitle + ", cintrodution=" + cintrodution + ", ctid="
				+ ctid + ", courseting=" + courseting + ", coursephoto=" + coursephoto + ", userId=" + userId
				+ ", cview=" + cview + ", createTime=" + createTime + ", memberCount=" + memberCount + ", assessAvg="
				+ assessAvg + ", user=" + user + "]";
	}

	


}

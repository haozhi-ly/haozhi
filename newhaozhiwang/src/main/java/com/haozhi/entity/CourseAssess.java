package com.haozhi.entity;

/**
 * 课程评价
 * 
 * @author admin
 *
 */
public class CourseAssess {
	private int csid;
	private int userid;// --用户id(外键)
	private UserInfo user;
	private int cmid;// --课时管理id(外键)
	private String content;// --评价内容
	private String time;// --评价时间
	private int readstatus;// --0或1表示未读或已读
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段
	private CourseManage courseManage;
	

	public CourseAssess() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getCsid() {
		return csid;
	}


	public void setCsid(int csid) {
		this.csid = csid;
	}


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public UserInfo getUser() {
		return user;
	}


	public void setUser(UserInfo user) {
		this.user = user;
	}


	public int getCmid() {
		return cmid;
	}


	public void setCmid(int cmid) {
		this.cmid = cmid;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public int getReadstatus() {
		return readstatus;
	}


	public void setReadstatus(int readstatus) {
		this.readstatus = readstatus;
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


	public CourseManage getCourseManage() {
		return courseManage;
	}


	public void setCourseManage(CourseManage courseManage) {
		this.courseManage = courseManage;
	}


	public CourseAssess(int csid, int userid, UserInfo user, int cmid, String content, String time, int readstatus,
			String temp01, String temp02, String temp03, CourseManage courseManage) {
		super();
		this.csid = csid;
		this.userid = userid;
		this.user = user;
		this.cmid = cmid;
		this.content = content;
		this.time = time;
		this.readstatus = readstatus;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
		this.courseManage = courseManage;
	}


	@Override
	public String toString() {
		return "\nCourseAssess [csid=" + csid + ", userid=" + userid + ", user=" + user + ", cmid=" + cmid + ", content="
				+ content + ", time=" + time + ", readstatus=" + readstatus + ", temp01=" + temp01 + ", temp02="
				+ temp02 + ", temp03=" + temp03 + ", courseManage=" + courseManage + "]";
	}
	
	
	
	
	

}

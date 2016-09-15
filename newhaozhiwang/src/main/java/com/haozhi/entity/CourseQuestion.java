package com.haozhi.entity;

import java.util.List;

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
	private UserInfo user;
	private CourseManage courseManage;
	private int answercount;
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段
	private List<CourseAnswer> courseAnswer;

	public CourseQuestion() {
	}

	public CourseQuestion(int cqid, int userid, int cmid, String cqcontent, String cqtime, int cqview, int qreadstatus,
			UserInfo user, CourseManage courseManage, int answercount) {
		super();
		this.cqid = cqid;
		this.userid = userid;
		this.cmid = cmid;
		this.cqcontent = cqcontent;
		this.cqtime = cqtime;
		this.cqview = cqview;
		this.qreadstatus = qreadstatus;
		this.user = user;
		this.courseManage = courseManage;
		this.answercount = answercount;
	}


	
	

	public CourseManage getCourseManage() {
		return courseManage;
	}


	public void setCourseManage(CourseManage courseManage) {
		this.courseManage = courseManage;
	}



	public UserInfo getUser() {
		return user;
	}



	public void setUser(UserInfo user) {
		this.user = user;
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



	public int getAnswercount() {
		return answercount;
	}



	public void setAnswercount(int answercount) {
		this.answercount = answercount;
	}

	public List<CourseAnswer> getCourseAnswer() {
		return courseAnswer;
	}

	public void setCourseAnswer(List<CourseAnswer> courseAnswer) {
		this.courseAnswer = courseAnswer;
	}

	@Override
	public String toString() {
		return "CourseQuestion [cqid=" + cqid + ", userid=" + userid + ", cmid=" + cmid + ", cqcontent=" + cqcontent
				+ ", cqtime=" + cqtime + ", cqview=" + cqview + ", qreadstatus=" + qreadstatus + ", user=" + user
				+ ", courseManage=" + courseManage + ", answercount=" + answercount + ", courseAnswer=" + courseAnswer
				+ "]";
	}

	

	








	



	




	

}

package com.haozhi.entity;

/**
 * 课时问题问答表
 * 
 * @author admin
 *
 */
public class CourseAnswer {
	private int caid;
	private int cqid;// -- 用户id(外键)
	private int userid;// -- 回答问题的人 用户id(外键)
	private String answerContent;// 回答的内容
	private String answertime;// --回答时间
	private CourseQuestion courseQuestion;
	private String cqcontent;
	private UserInfo userinfo;
	private CourseManage courseManager;
	public CourseAnswer() {
	}
	public CourseAnswer(int caid, int cqid, int userid, String answerContent, String answertime,
			CourseQuestion courseQuestion, UserInfo userinfo, CourseManage courseManager) {
		super();
		this.caid = caid;
		this.cqid = cqid;
		this.userid = userid;
		this.answerContent = answerContent;
		this.answertime = answertime;
		this.courseQuestion = courseQuestion;
		this.userinfo = userinfo;
		this.courseManager = courseManager;
	}
	public int getCaid() {
		return caid;
	}
	public void setCaid(int caid) {
		this.caid = caid;
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
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public String getAnswertime() {
		return answertime;
	}
	public void setAnswertime(String answertime) {
		this.answertime = answertime;
	}
	public CourseQuestion getCourseQuestion() {
		return courseQuestion;
	}
	public void setCourseQuestion(CourseQuestion courseQuestion) {
		this.courseQuestion = courseQuestion;
	}
	public UserInfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
	public CourseManage getCourseManager() {
		return courseManager;
	}
	public void setCourseManager(CourseManage courseManager) {
		this.courseManager = courseManager;
	}
	
	public String getCqcontent() {
		return cqcontent;
	}
	public void setCqcontent(String cqcontent) {
		this.cqcontent = cqcontent;
	}
	@Override
	public String toString() {
		return "\nCourseAnswer [caid=" + caid + ", cqid=" + cqid + ", userid=" + userid + ", answerContent="
				+ answerContent + ", answertime=" + answertime + ", courseQuestion=" + courseQuestion + ", userinfo="
				+ userinfo + ", courseManager=" + courseManager +",cqcontent="+cqcontent+ "]";
	}

	
	

	
	

	
}

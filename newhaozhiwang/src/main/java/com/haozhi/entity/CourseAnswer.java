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
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public CourseAnswer() {
	}

	public CourseAnswer(int caid, int cqid, int userid, String answerContent,
			String answertime, String temp01, String temp02, String temp03) {
		this.caid = caid;
		this.cqid = cqid;
		this.userid = userid;
		this.answerContent = answerContent;
		this.answertime = answertime;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
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
		return "CourseAnswer [caid=" + caid + ", cqid=" + cqid + ", userid="
				+ userid + ", answerContent=" + answerContent + ", answertime="
				+ answertime + ", temp01=" + temp01 + ", temp02=" + temp02
				+ ", temp03=" + temp03 + "]";
	}

}

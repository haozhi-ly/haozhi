package com.haozhi.entity;

/**
 * 课程笔记
 * 
 * @author admin
 *
 */
public class CourseNote {
	private int courseNoteId;
	private int userid;// -- 用户id(外键)
	private int cmid;// --课时id(外键)
	private String praiseNumber;// --赞的人，拼接
	private String noteContent;// --笔记内容
	private String ntime;
	private String title;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段
	private UserInfo user;
	private CourseManage courseManage;

	public CourseNote() {
	}

	public CourseNote(int courseNoteId, int userid, int cmid,
			String praiseNumber, String noteContent, String ntime,
			String title, String temp02, String temp03) {
		this.courseNoteId = courseNoteId;
		this.userid = userid;
		this.cmid = cmid;
		this.praiseNumber = praiseNumber;
		this.noteContent = noteContent;
		this.ntime = ntime;
		this.title = title;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public CourseManage getCourseManage() {
		return courseManage;
	}

	public void setCourseManage(CourseManage courseManage) {
		this.courseManage = courseManage;
	}

	public int getCourseNoteId() {
		return courseNoteId;
	}

	public void setCourseNoteId(int courseNoteId) {
		this.courseNoteId = courseNoteId;
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

	public String getPraiseNumber() {
		return praiseNumber;
	}

	public void setPraiseNumber(String praiseNumber) {
		this.praiseNumber = praiseNumber;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public String getNtime() {
		return ntime;
	}

	public void setNtime(String ntime) {
		this.ntime = ntime;
	}

	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
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
		return "\nCourseNote [courseNoteId=" + courseNoteId + ", userid=" + userid + ", cmid=" + cmid + ", praiseNumber="
				+ praiseNumber + ", noteContent=" + noteContent + ", ntime=" + ntime + ", title=" + title + ", user="
				+ user + ",courseManage="+courseManage+"]";
	}

	


}

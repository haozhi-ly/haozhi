package com.haozhi.entity;

import java.util.List;

/**
 * 课时管理
 * @author admin
 *
 */
public class CourseManage {
	private int cmid;
	private int courseid;
	private Course course;
	private int type;// --(o/1，表示视频或图文)
	private String title;// --课时标题
	private int courseseq;// --课时序号
	private String pathOrContetn;// --课时内容（路径或者内容）
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public CourseManage() {
	}

	public CourseManage(int cmid, int courseid, Course course, int type, String title, int courseseq,
			String pathOrContetn) {
		super();
		this.cmid = cmid;
		this.courseid = courseid;
		this.course = course;
		this.type = type;
		this.title = title;
		this.courseseq = courseseq;
		this.pathOrContetn = pathOrContetn;
	}

	public int getCmid() {
		return cmid;
	}

	public void setCmid(int cmid) {
		this.cmid = cmid;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCourseseq() {
		return courseseq;
	}

	public void setCourseseq(int courseseq) {
		this.courseseq = courseseq;
	}

	public String getPathOrContetn() {
		return pathOrContetn;
	}

	public void setPathOrContetn(String pathOrContetn) {
		this.pathOrContetn = pathOrContetn;
	}

	@Override
	public String toString() {
		return "CourseManage [cmid=" + cmid + ", courseid=" + courseid + ", course=" + course + ", type=" + type
				+ ", title=" + title + ", courseseq=" + courseseq + ", pathOrContetn=" + pathOrContetn + "]";
	}

	
	
	
}

package com.haozhi.entity;
/**
 * 课时管理
 * @author admin
 *
 */
public class CourseManage {
	private int cmid;
	private int courseid;
	private int type;// --(o/1，表示视频或图文)
	private String title;// --课时标题
	private int courseseq;// --课时序号
	private String pathOrContetn;// --课时内容（路径或者内容）
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public CourseManage() {
	}

	public CourseManage(int cmid, int courseid, int type, String title,
			int courseseq, String pathOrContetn, String temp01, String temp02,
			String temp03) {
		this.cmid = cmid;
		this.courseid = courseid;
		this.type = type;
		this.title = title;
		this.courseseq = courseseq;
		this.pathOrContetn = pathOrContetn;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
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
		return "CourseManage [cmid=" + cmid + ", courseid=" + courseid
				+ ", type=" + type + ", title=" + title + ", courseseq="
				+ courseseq + ", pathOrContetn=" + pathOrContetn + ", temp01="
				+ temp01 + ", temp02=" + temp02 + ", temp03=" + temp03 + "]";
	}

}

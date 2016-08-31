package com.haozhi.entity;
/**
 * 课程信息
 * @author admin
 *
 */
public class Course {
	private int courseid;
	private String ctitle;// --标题
	private String cintrodution;// --课程简介
	private int ctid; // --课程类别（外键）
	private String courseting;// --应用于课程关键字搜索
	private String coursephoto;// --课程图片
	private int userId;// --外键 课程的创建者
	private int cview;// --浏览量
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段

	public Course() {
	}

	public Course(int courseid, String ctitle, String cintrodution, int ctid,
			String courseting, String coursephoto, int userId, int cview,
			String temp01, String temp02, String temp03) {
		this.courseid = courseid;
		this.ctitle = ctitle;
		this.cintrodution = cintrodution;
		this.ctid = ctid;
		this.courseting = courseting;
		this.coursephoto = coursephoto;
		this.userId = userId;
		this.cview = cview;
		this.temp01 = temp01;
		this.temp02 = temp02;
		this.temp03 = temp03;
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

	public void setCtid(int ctid) {
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
		return "Course [courseid=" + courseid + ", ctitle=" + ctitle
				+ ", cintrodution=" + cintrodution + ", ctid=" + ctid
				+ ", courseting=" + courseting + ", coursephoto=" + coursephoto
				+ ", userId=" + userId + ", cview=" + cview + ", temp01="
				+ temp01 + ", temp02=" + temp02 + ", temp03=" + temp03 + "]";
	}

}

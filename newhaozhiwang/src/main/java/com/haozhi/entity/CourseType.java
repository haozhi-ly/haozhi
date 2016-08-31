package com.haozhi.entity;
/**
 * 课程类别
 * @author admin
 *
 */
public class CourseType {
	private int ctid;
	private String typename;
	private String temp01;// --备用字段

	public CourseType() {
	}

	public CourseType(int ctid, String typename, String temp01) {
		this.ctid = ctid;
		this.typename = typename;
		this.temp01 = temp01;
	}

	public int getCtid() {
		return ctid;
	}

	public void setCtid(int ctid) {
		this.ctid = ctid;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public String getTemp01() {
		return temp01;
	}

	public void setTemp01(String temp01) {
		this.temp01 = temp01;
	}

	@Override
	public String toString() {
		return "CourseType [ctid=" + ctid + ", typename=" + typename
				+ ", temp01=" + temp01 + "]";
	}

}

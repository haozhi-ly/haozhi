package com.haozhi.entity;

import java.io.Serializable;
import java.util.List;

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
	private CourseType courseType;//ly--添加的字段目的是为了，在后台获得课程的类型
	private String courseting;// --应用于课程关键字搜索
	private String coursephoto;// --课程图片
	private int userId;// --外键 课程的创建者
	private int cview;// --浏览量
	private String createTime;// --备用字段
	private int memberCount;  //--课程总人员
	private double assessAvg;  //--课程评分
	private UserInfo user;  // 用户
	private int courseCount; //课程的课时数
	private int userCount; //课程的用户人数
	private int assessCount; //评价人数
	private String typename; //课程类型名
	private int teachnumber;
	private int studynumber;//学习的所有课程数
	private int attentionnumber;//关注的人数
	private int beattentionnumber;//被关注的人数
	private UserInfo student;//学习本课程的学生
	public Course() {
	}

	
	
	public Course(String ctitle, String cintrodution, Integer ctid,
			String courseting, String coursephoto, int userId, int cview,
			String createTime) {
		this.ctitle = ctitle;
		this.cintrodution = cintrodution;
		this.ctid = ctid;
		this.courseting = courseting;
		this.coursephoto = coursephoto;
		this.userId = userId;
		this.cview = cview;
		this.createTime = createTime;
	}
	
	public Course(String ctitle, String cintrodution, CourseType courseType,
			String courseting, String coursephoto, UserInfo userInfo, int cview,
			String createTime) {
		this.ctitle = ctitle;
		this.cintrodution = cintrodution;
		this.courseType=courseType;
		this.courseting = courseting;
		this.coursephoto = coursephoto;
		this.user = userInfo;
		this.cview = cview;
		this.createTime = createTime;
	}
	
	
	
	


	public Course(String ctitle, String cintrodution, Integer ctid, String courseting, String coursephoto, int userId,
			String createTime) {
		super();
		this.ctitle = ctitle;
		this.cintrodution = cintrodution;
		this.ctid = ctid;
		this.courseting = courseting;
		this.coursephoto = coursephoto;
		this.userId = userId;
		this.createTime = createTime;
	}

	public CourseType getCourseType() {
		return courseType;
	}

	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
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
	
	

	public int getCourseCount() {
		return courseCount;
	}

	public void setCourseCount(int courseCount) {
		this.courseCount = courseCount;
	}

	public int getUserCount() {
		return userCount;
	}

	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}

	public int getAssessCount() {
		return assessCount;
	}

	public void setAssessCount(int assessCount) {
		this.assessCount = assessCount;
	}
	

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}



	public UserInfo getStudent() {
		return student;
	}



	public void setStudent(UserInfo student) {
		this.student = student;
	}

	


	public int getTeachnumber() {
		return teachnumber;
	}



	public void setTeachnumber(int teachnumber) {
		this.teachnumber = teachnumber;
	}



	public int getStudynumber() {
		return studynumber;
	}



	public void setStudynumber(int studynumber) {
		this.studynumber = studynumber;
	}



	public int getAttentionnumber() {
		return attentionnumber;
	}



	public void setAttentionnumber(int attentionnumber) {
		this.attentionnumber = attentionnumber;
	}



	public int getBeattentionnumber() {
		return beattentionnumber;
	}



	public void setBeattentionnumber(int beattentionnumber) {
		this.beattentionnumber = beattentionnumber;
	}

	@Override
	public String toString() {
		return "Course [courseid=" + courseid + ", ctitle=" + ctitle + ", cintrodution=" + cintrodution + ", ctid="
				+ ctid + ", courseType=" + courseType + ", courseting=" + courseting + ", coursephoto=" + coursephoto
				+ ", userId=" + userId + ", cview=" + cview + ", createTime=" + createTime + ", memberCount="
				+ memberCount + ", assessAvg=" + assessAvg + ", user=" + user + ", courseCount=" + courseCount
				+ ", userCount=" + userCount + ", assessCount=" + assessCount + ", typename=" + typename
				+ ", teachnumber=" + teachnumber + ", studynumber=" + studynumber + ", attentionnumber="
				+ attentionnumber + ", beattentionnumber=" + beattentionnumber + ", student=" + student + "]";
	}



	



	

	



}

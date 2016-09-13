package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.CourseManage;

public interface CourseManageService {
	List<CourseManage> getCourseManagebyId(Integer courseid); //通过courseid来查课时
	
	CourseManage getPlayByCmid(Integer cmid); //通过cmid来查课时
	
	CourseManage selectTeachInfo(Integer cmid);  //通过cmid来查改课程的相关信息
	
	List<CourseManage> getCourseManagebyCmid(Integer cmid);//通过cmid来查课时
}

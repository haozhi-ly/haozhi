package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.CourseManage;

public interface CourseManageService {
	List<CourseManage> getCourseManagebyId(Integer courseid); //通过courseid来查课时
	
	CourseManage getPlayByCmid(Integer cmid); //通过cmid来查课时
}

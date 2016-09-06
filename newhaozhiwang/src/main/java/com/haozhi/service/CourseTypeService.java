package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.CourseType;



public interface CourseTypeService {

	int findAlltype();

	List<CourseType> findAlltypebypage(int pagenumber, int pagesize);

	boolean addCourseType(String typename);

	boolean updateCourseType(CourseType ct);

	

	boolean deleteCourseType(String[] ctids);

	List<CourseType> findAllCourseType();

}

package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.Course;

public interface CourseService {
	List<Course> getAllCourse();
	
	boolean insertCourse(Course course);
}


package com.haozhi.mapper;

import java.util.List;

import com.haozhi.entity.Course;

public interface CourseMapper {
	List<Course> getAllCourse();
	
	int insertCourse(Course course);
}


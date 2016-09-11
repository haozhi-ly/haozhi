
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseType;

public interface CourseTypeMapper {
	int findAllType();

	
	List<CourseType> findAllTypeByPage(Map<String,Object> map);


	void insertCourseType(String typename);


	


	void updateCourseType(CourseType ct);


	void deleteCourseType(String[] ctids);


	List<CourseType> findAllCourseType();


	CourseType findByctid(CourseType courseType);


	
}

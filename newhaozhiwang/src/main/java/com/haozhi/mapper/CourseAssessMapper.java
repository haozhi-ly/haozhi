
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseAssess;

public interface CourseAssessMapper {
	List<CourseAssess> getAssessbypageDescTime(Map<String,Object> map);
	List<CourseAssess> test();
	List<CourseAssess> CMcountbycourseid(int courseid);
	
}

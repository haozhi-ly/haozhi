package com.haozhi.service;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseAssess;

public interface CourseAssessService {

	

	List<CourseAssess> getAssessbypageDescTime(Map<String, Object> hashmap);

	List<CourseAssess> CMcountbycourseid(String courseid);

	List<CourseAssess> getAssesstopfour(int courseid);

}

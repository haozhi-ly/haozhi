package com.haozhi.service;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseQuestion;

public interface CourseQuestionService {

	int getAllcourseQuestionbycourseid(int parseInt);


	List<CourseQuestion> getAllQuestionbycmid(Map<String, Object> hashmap);

}

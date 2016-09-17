package com.haozhi.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.CourseQuestion;

public interface CourseQuestionService {

	int getAllcourseQuestionbycourseid(int parseInt);


	List<CourseQuestion> getAllQuestionbycmid(Map<String, Object> hashmap);
	
	List<CourseQuestion> getQuestionbycmid(Integer cmid);
	
	int addCourseQuestion(Integer userid,Integer cmid,String cqcontent);


}

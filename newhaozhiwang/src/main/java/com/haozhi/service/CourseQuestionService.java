package com.haozhi.service;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseQuestion;

public interface CourseQuestionService {

	int getAllcourseQuestionbycourseid(int parseInt);


	List<CourseQuestion> getAllQuestionbycmid(Map<String, Object> hashmap);
	
	List<CourseQuestion> getQuestionbycmid(Integer cmid);
	
	int addCourseQuestion(Integer userid,Integer cmid,String cqcontent);



	List<CourseQuestion> newQuestionTopAtFour(int courseid);


	CourseQuestion detailAnswerbycqid(int cqid);


	List<CourseQuestion> getMyQuestionByUsid(String userid);


}

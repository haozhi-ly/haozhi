
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseQuestion;

public interface CourseQuestionMapper {

	List<CourseQuestion> getAllcourseQuestionbycourseid(int courseid);


	List<CourseQuestion> getAllQuestionbycmid(Map<String, Object> hashmap);
	
	List<CourseQuestion> getQuestionbycmid(Integer cmid);


	List<CourseQuestion> newQuestionTopAtFour(int courseid);
	CourseQuestion detailAnswerbycqid(int cqid);

}

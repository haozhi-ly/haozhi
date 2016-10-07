
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.CourseQuestion;

public interface CourseQuestionMapper {

	List<CourseQuestion> getAllcourseQuestionbycourseid(int courseid);

	List<CourseQuestion> getAllQuestionbycmid(Map<String, Object> hashmap);
	
	List<CourseQuestion> getQuestionbycmid(Integer cmid);
	
	int addCourseQuestion(@Param("userid")Integer userid,@Param("cmid")Integer cmid,@Param("cqcontent")String cqcontent);


	List<CourseQuestion> newQuestionTopAtFour(int courseid);
	CourseQuestion detailAnswerbycqid(int cqid);

	List<CourseQuestion> getMyQuestionByUsid(String userid);
}

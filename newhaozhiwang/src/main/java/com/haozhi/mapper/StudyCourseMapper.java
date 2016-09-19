
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.Course;
import com.haozhi.entity.StudyCourse;

public interface StudyCourseMapper {
	List<StudyCourse> getStudyCourseByCmid(Integer cmid);  //通过cmid查学院学习课程的时间 按时间递减排序 
	List<StudyCourse> persentdynamicStudentsbycourseid(int courseid);

	int countStudyCourseByUseridCmid(@Param("userid")Integer userid,@Param("cmid")Integer cmid); //在添加评论的时候应该先查询用户是否已经学习此课程了
	List<StudyCourse> newjoinStudentbycourseid(int courseid);
	List<Course> getPersonCourse(String userid);
	
	List<Course> getCourseByUsid(String userid);
	int joinStudyCourse(@Param("userid")Integer userid,@Param("courseid")Integer courseid);

	List<StudyCourse> dynamicStudy();

	String getCourseCount(String userid);
	
	int judgeStudyCourse(@Param("userid")Integer userid,@Param("courseid")Integer courseid);//判断是否加入了课程

	List<Course> getTeachByUsid(String userid);

}

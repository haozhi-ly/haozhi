package com.haozhi.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.haozhi.entity.Course;
import com.haozhi.entity.StudyCourse;

public interface StudyCourseService {
	List<StudyCourse> getStudyCourseByCmid(Integer cmid);  //通过cmid查学院学习课程的时间 按时间递减排序 


	List<StudyCourse> persentdynamicStudentsbycourseid(int courseid);

	
	int countStudyCourseByUseridCmid(Integer userid,Integer cmid); //在添加评论的时候应该先查询用户是否已经学习此课程了

	int joinStudyCourse(Integer userid,Integer courseid);

	List<StudyCourse> newjoinStudentbycourseid(int courseid);
	
	int judgeStudyCourse(Integer userid,Integer courseid);//判断是否加入了课程



	List<Course> getPersonCourse(String userid);//通过userid查询该用户学习的所有课程
	List<Course> getCourseByUsid(String userid);//通过userid查询该用户学习的所有课程
}

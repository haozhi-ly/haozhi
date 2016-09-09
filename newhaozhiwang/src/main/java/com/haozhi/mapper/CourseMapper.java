
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.Course;
import com.haozhi.entity.CourseManage;
import com.haozhi.entity.StudyCourse;

public interface CourseMapper {
	List<Course> getAllCourse();  //查询所有课程
	
	List<Course> getHostCourse(); //查询热门课程显示前三个 
	
	int insertCourse(Course course);  //插入课程
	
	List<Course> getCourseByCtid(Integer ctid);  //通过课程类型查所有课程
	
	List<Course> getHostByCtid(Integer ctid);  //通过课程类型查热门课程的头三条
	
	List<Course> getCourseDescTime(Integer ctid);  //查询课程按创建时间排序
	

	List<Course> getCoursebypageDescTime(Map<String,Object> map);

	int countCoursenumber();
	

	List<Course> getAllHostCourse();  //查询所有热门课程
	
	Course getCourseById(Integer courseid); // 通过课程号查课程
	
	List<Course> getStudentsbypageDescTime(Map<String,Object> map);
	
	List<StudyCourse> getAllStudents(int courseid);

}


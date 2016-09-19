
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.Course;
import com.haozhi.entity.StudyCourse;

public interface CourseMapper {
	int countCourseByCtid(@Param("ctid")Integer ctid);  //course总数
	
	List<Course> getAllCourse(@Param("pagesize")Integer pagesize,@Param("pagenumber")Integer pagenumber);  //查询所有课程
	
	List<Course> getHostCourse(); //查询热门课程
	
	int insertCourse(Course course);  //插入课程
	
	List<Course> getCourseByCtid(@Param("ctid")Integer ctid,@Param("pagesize")Integer pagesize,@Param("pagenumber")Integer pagenumber);  //通过课程类型查所有课程
	
	List<Course> getHostByCtid(Integer ctid);  //通过课程类型查热门课程的头三条
	
	List<Course> getHostCourseByPage(@Param("ctid")Integer ctid,@Param("pagesize")Integer pagesize,@Param("pagenumber")Integer pagenumber); //查询热门课程
	
	List<Course> getCourseDescTime(@Param("ctid")Integer ctid,@Param("pagesize")Integer pagesize,@Param("pagenumber")Integer pagenumber);  //查询课程按创建时间排序
	
	List<Course> getCoursebypageDescTime(Map<String,Object> map);

	int countCoursenumber();
	

	List<Course> getAllHostCourse();  //查询所有热门课程
	
	Course getCourseById(Integer courseid); // 通过课程号查课程
	
	List<Course> getStudentsbypageDescTime(Map<String,Object> map);
	
	List<StudyCourse> getAllStudents(int courseid);
	
	List<Course> recommedCourseByCmid(Integer cmid);  //通过cmid来查推荐课程的前三门
	

	int createcourse(Course course);
	
	List<Course> mainHotCourse();

	List<Course> goodCourse();

	List<Course> getmainCourseByCtid(int ctid);


}


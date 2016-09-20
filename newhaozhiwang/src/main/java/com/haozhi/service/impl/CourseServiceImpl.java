package com.haozhi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Course;
import com.haozhi.entity.StudyCourse;
import com.haozhi.mapper.CourseMapper;
import com.haozhi.service.CourseService;

@Service("courseService")
public class CourseServiceImpl implements CourseService {
	@Autowired
	private  CourseMapper courseMapper;
	
	@Override
	public List<Course> getAllCourse(Integer pagesize,Integer pagenumber) {
		return courseMapper.getAllCourse(pagesize,pagenumber);
	}
	
	@Override
	public List<Course> getHostCourse() {
		return courseMapper.getHostCourse();
	}

	@Override
	public boolean insertCourse(Course course) {
		if(courseMapper.insertCourse(course)>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Course> getCourseByCtid(Integer ctid,Integer pagesize,Integer pagenumber) {
		return courseMapper.getCourseByCtid(ctid,pagesize,pagenumber);
	}

	@Override
	public List<Course> getHostByCtid(Integer ctid) {
		return courseMapper.getHostByCtid(ctid);
	}

	@Override
	public List<Course> getCourseDescTime(Integer ctid,Integer pagesize,Integer pagenumber) {
		return courseMapper.getCourseDescTime( ctid, pagesize, pagenumber);
	}

	@Override
	public List<Course> getAllHostCourse() {
		return courseMapper.getAllHostCourse();
	}

	@Override

	public List<Course> getAllCourseBypage(int rows, int page) {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagenumber",page);
		map.put("pagesize", rows);
		List<Course> list=courseMapper.getCoursebypageDescTime(map);		
		return list;
	}

	@Override
	public int findAlltype() {
		return courseMapper.countCoursenumber();
	}
	@Override
	public Course getCourseById(Integer courseid) {
		return courseMapper.getCourseById(courseid);

	}

	@Override
	public List<StudyCourse> getAllStudentNumber(Integer courseid) {
		return courseMapper.getAllStudents(courseid);
	}

	@Override
	public List<Course> getStudentsbypageDescTime(Integer p, Integer courseid) {
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize", 24);
		hashmap.put("pagenumber", p);
		hashmap.put("courseid", courseid);
		return courseMapper.getStudentsbypageDescTime(hashmap);
	}

	@Override
	public int createcourse(Course course) {
		return courseMapper.createcourse(course);
	}
	@Override
	public List<Course> recommedCourseByCmid(Integer cmid) {
		return courseMapper.recommedCourseByCmid(cmid);
	}

	@Override
	public int countCourseByCtid(Integer ctid) {
		return courseMapper.countCourseByCtid(ctid);
	}


	@Override
	public List<Course> getHostCourseByPage(Integer ctid, Integer pagesize, Integer pagenumber) {
		return courseMapper.getHostCourseByPage(ctid, pagesize, pagenumber);
	}
	@Override
	public List<Course> mainHotCourse() {
		// TODO Auto-generated method stub
		return courseMapper.mainHotCourse();
	}

	@Override
	public List<Course> studyingByUserid(Integer pagesize, Integer pagenumber, Integer userid) {
		return courseMapper.studyingByUserid(pagesize, pagenumber, userid);
	}


	public List<Course> goodCourse() {
		// TODO Auto-generated method stub
		return courseMapper.goodCourse();
	
	}
	@Override
	public List<Course> getmainCourseByCtid(int ctid) {
		// TODO Auto-generated method stub
		return courseMapper.getmainCourseByCtid(ctid);
	}	

}

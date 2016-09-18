package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Course;
import com.haozhi.entity.StudyCourse;
import com.haozhi.mapper.StudyCourseMapper;
import com.haozhi.service.StudyCourseService;

@Service("studyCourseService")
public class StudyCourseServiceImpl implements StudyCourseService {
	@Autowired
	private StudyCourseMapper studyCourseMapper;

	@Override
	public List<StudyCourse> getStudyCourseByCmid(Integer cmid) {
		return studyCourseMapper.getStudyCourseByCmid(cmid);
	}

	@Override

	public List<StudyCourse> persentdynamicStudentsbycourseid(int courseid) {
		// TODO Auto-generated method stub
		return studyCourseMapper.persentdynamicStudentsbycourseid(courseid);
	}
	public int countStudyCourseByUseridCmid(Integer userid, Integer cmid) {
		return studyCourseMapper.countStudyCourseByUseridCmid(userid, cmid);

	}

	@Override
	public List<StudyCourse> newjoinStudentbycourseid(int courseid) {
		// TODO Auto-generated method stub
		return studyCourseMapper.newjoinStudentbycourseid(courseid);
	}

	@Override
	public List<Course> getPersonCourse(String userid) {
		return studyCourseMapper.getPersonCourse(userid);
	}

	public List<Course> getCourseByUsid(String userid) {
		return studyCourseMapper.getCourseByUsid(userid);
	}
	
	public int joinStudyCourse(Integer userid, Integer courseid) {
		return studyCourseMapper.joinStudyCourse(userid, courseid);
	}

	@Override
	public String getCourseCount(String userid) {
		return studyCourseMapper.getCourseCount(userid);
	}

}

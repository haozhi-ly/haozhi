package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseManage;
import com.haozhi.mapper.CourseManageMapper;
import com.haozhi.service.CourseManageService;

@Service("courseManageService")
public class CourseManageServiceImpl implements CourseManageService {
	@Autowired
	private  CourseManageMapper courseManageMapper;


	@Override
	public List<CourseManage> getCourseManagebyId(Integer courseid) {
		return courseManageMapper.getCourseManagebyId(courseid);
	}


	@Override
	public CourseManage getPlayByCmid(Integer cmid) {
		return courseManageMapper.getPlayByCmid(cmid);
	}


	@Override
	public CourseManage selectTeachInfo(Integer cmid) {
		return courseManageMapper.selectTeachInfo(cmid);
	}


	@Override
	public int findcourseid() {
		return courseManageMapper.findcourseid();
	}


	@Override
	public String findcourseseq(int courseid) {
		return courseManageMapper.findcourseseq(courseid);
	}


	@Override
	public int addlession(CourseManage courseManage) {
		return courseManageMapper.addlession(courseManage);
	}


	@Override
	public List<CourseManage> getCourseManagebyCmid(Integer cmid) {
		return courseManageMapper.getCourseManagebyCmid(cmid);
	}


	@Override
	public List<CourseManage> findAllcourseseq(int courseid) {
		return courseManageMapper.findAllcourseseq(courseid);
	}


}

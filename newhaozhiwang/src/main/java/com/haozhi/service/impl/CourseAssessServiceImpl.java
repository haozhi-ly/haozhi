package com.haozhi.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseAssess;
import com.haozhi.mapper.CourseAssessMapper;
import com.haozhi.service.CourseAssessService;

@Service("courseAssessService")
public class CourseAssessServiceImpl implements CourseAssessService {

	
	@Autowired
	private CourseAssessMapper courseAssessMapper;
	
	@Override
	
	public List<CourseAssess> getAssessbypageDescTime(Map<String, Object> hashmap) {
		// TODO Auto-generated method stub
		return courseAssessMapper.getAssessbypageDescTime(hashmap);
	}

	@Override
	public List<CourseAssess> CMcountbycourseid(String courseid) {
		// TODO Auto-generated method stub
		return courseAssessMapper.CMcountbycourseid(Integer.parseInt(courseid));
	}

}

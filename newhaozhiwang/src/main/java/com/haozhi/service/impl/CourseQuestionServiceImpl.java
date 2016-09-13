package com.haozhi.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseQuestion;
import com.haozhi.mapper.CourseQuestionMapper;
import com.haozhi.service.CourseQuestionService;

@Service("courseQuestionService")
public class CourseQuestionServiceImpl implements CourseQuestionService {
	
	@Autowired
	private CourseQuestionMapper courseQuestionMapper;
	
	@Override
	public int getAllcourseQuestionbycourseid(int courseid) {
		// TODO Auto-generated method stub
		return courseQuestionMapper.getAllcourseQuestionbycourseid(courseid).size();
	}

	

	@Override
	public List<CourseQuestion> getAllQuestionbycmid(Map<String, Object> hashmap) {
		// TODO Auto-generated method stub
		return courseQuestionMapper.getAllQuestionbycmid(hashmap);
	}



	@Override
	public List<CourseQuestion> newQuestionTopAtFour(int courseid) {
		// TODO Auto-generated method stub
		return courseQuestionMapper.newQuestionTopAtFour(courseid);
	}
	
}

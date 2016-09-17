package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseAnswer;
import com.haozhi.mapper.CourseAnswerMapper;
import com.haozhi.service.CourseAnswerService;

@Service("courseAnswerService")
public class CourseAnswerServiceImpl implements CourseAnswerService {

	@Autowired
	private CourseAnswerMapper courseAnswerMapper;
	@Override
	public List<CourseAnswer> detailQuestion(int cqid) {
		// TODO Auto-generated method stub
		return courseAnswerMapper.detailAnswerbycqid(cqid);
	}
	
	public boolean addAnswerbyCqid(CourseAnswer courseAnswer) {
		// TODO Auto-generated method stub
			try {
				courseAnswerMapper.addAnswer(courseAnswer);
			} catch (Exception e) {
				// TODO Auto-generated catch block
			
				e.printStackTrace();
				return false;
			}
			return true;
	}

}

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
		return courseQuestionMapper.getAllQuestionbycmid(hashmap);
	}




	public List<CourseQuestion> newQuestionTopAtFour(int courseid) {
		// TODO Auto-generated method stub
		return courseQuestionMapper.newQuestionTopAtFour(courseid);
	}
	public List<CourseQuestion> getQuestionbycmid(Integer cmid) {
		return courseQuestionMapper.getQuestionbycmid(cmid);

	}



	@Override
	public CourseQuestion detailAnswerbycqid(int cqid) {
		// TODO Auto-generated method stub
		return courseQuestionMapper.detailAnswerbycqid(cqid);
	}



	@Override
	public int addCourseQuestion(Integer userid, Integer cmid, String cqcontent) {
		return courseQuestionMapper.addCourseQuestion(userid, cmid, cqcontent);
	}



	@Override
	public List<CourseQuestion> getMyQuestionByUsid(String userid) {
		return courseQuestionMapper.getMyQuestionByUsid(userid);
	}

}

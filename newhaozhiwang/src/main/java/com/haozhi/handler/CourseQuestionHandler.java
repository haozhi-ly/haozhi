package com.haozhi.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.CourseQuestion;
import com.haozhi.service.CourseQuestionService;

@Controller
@RequestMapping("/courseQuestion")
public class CourseQuestionHandler {
	
	
	@Autowired
	private CourseQuestionService courseQuestionService;
	
	@ResponseBody
	@RequestMapping("/getAllcourseQuestionbycourseid")
	public int getAllcourseQuestionbycourseid(String courseid){
		return courseQuestionService.getAllcourseQuestionbycourseid(Integer.parseInt(courseid));
	}
	
	@ResponseBody
	@RequestMapping("/getAllQuestionbycmid")
	public List<CourseQuestion> getAllQuestionbycmid(int p,int courseid){
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize", 20);
		hashmap.put("pagenumber", p);
		hashmap.put("courseid",courseid);
		return courseQuestionService.getAllQuestionbycmid(hashmap);
	}
	
	
	@ResponseBody
	@RequestMapping("/getQuestionbycmid")
	public List<CourseQuestion> getQuestionbycmid(int cmid){
		List<CourseQuestion> courseQuestion = courseQuestionService.getQuestionbycmid(cmid);
		return courseQuestion;
	}
}


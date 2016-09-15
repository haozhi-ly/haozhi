package com.haozhi.handler;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.CourseAnswer;
import com.haozhi.service.CourseAnswerService;

@Controller
@RequestMapping("/courseAnswer")
public class CourseAnswerHandler {
	
	
	@Autowired
	private CourseAnswerService courseAnswerService;
	
	@ResponseBody
	@RequestMapping("/AddAnswerbycqid")
	public String addAnswerbycqid(int userid,int cqid,String answerContent){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String answerTime=sdf.format(new Date());
		CourseAnswer courseAnswer=new CourseAnswer();
		courseAnswer.setUserid(userid);
		courseAnswer.setCqid(cqid);
		courseAnswer.setAnswerContent(answerContent);
		courseAnswer.setAnswertime(answerTime);
		boolean flag=courseAnswerService.addAnswerbyCqid(courseAnswer);
		if(flag){
			return answerTime;
		}else{
			return null;
		}
		
		
	}
	
	

}

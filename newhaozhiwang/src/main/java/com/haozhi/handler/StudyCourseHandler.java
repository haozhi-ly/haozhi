package com.haozhi.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.StudyCourse;
import com.haozhi.service.StudyCourseService;


@Controller
@RequestMapping("/studyCourse")

public class StudyCourseHandler {
	
	@Autowired
	private StudyCourseService studyCourseService;
	
	@ResponseBody
	@RequestMapping("/getStudyCourseByCmid")
	public List<StudyCourse> getStudyCourseByCmid(Integer cmid){
		List<StudyCourse> studyCourse=studyCourseService.getStudyCourseByCmid(cmid);
		return studyCourse;
	}
	

}

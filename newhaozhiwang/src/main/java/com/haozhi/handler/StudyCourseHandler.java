package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.Admin;
import com.haozhi.entity.StudyCourse;
import com.haozhi.service.AdminService;
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
	
	@ResponseBody
	@RequestMapping("/countStudyCourseByUseridCmid")
	public int countStudyCourseByUseridCmid(Integer userid,Integer cmid){
		int count=studyCourseService.countStudyCourseByUseridCmid(userid, cmid);
		return count;
	}
	
	@ResponseBody
	@RequestMapping("/joinStudyCourse")
	public int joinStudyCourse(Integer userid,Integer courseid){
		int result=studyCourseService.joinStudyCourse(userid, courseid);
		return result;
	}

}

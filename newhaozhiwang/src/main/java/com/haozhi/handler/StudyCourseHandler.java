package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
	

	@RequestMapping("/persentdynamicStudentsbycourseid")
	public void persentdynamicStudentsbycourseid(int courseid,HttpServletResponse response){
		
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			PrintWriter out=response.getWriter();
			List<StudyCourse> studysCourse=studyCourseService.persentdynamicStudentsbycourseid(courseid);
			Gson gson=new Gson();
			String gsonstr=gson.toJson(studysCourse);
			out.print(gsonstr);
			out.flush();
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

	@ResponseBody
	@RequestMapping("/countStudyCourseByUseridCmid")
	public int countStudyCourseByUseridCmid(Integer userid,Integer cmid){
		int count=studyCourseService.countStudyCourseByUseridCmid(userid, cmid);
		return count;
	}

	
	@ResponseBody
	@RequestMapping("/newjoinStudentbycourseid")
	public List<StudyCourse> newjoinStudentbycourseid(int courseid){
		List<StudyCourse> list=studyCourseService.newjoinStudentbycourseid(courseid);
		return list;
	}

}

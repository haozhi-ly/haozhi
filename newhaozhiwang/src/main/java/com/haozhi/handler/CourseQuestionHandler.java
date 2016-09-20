package com.haozhi.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.haozhi.entity.CourseAnswer;
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
	@RequestMapping("/newQuestionTopAtFour")
	public List<CourseQuestion> newQuestionTopAtFour(int courseid){
		
		return courseQuestionService.newQuestionTopAtFour(courseid);

	}
	@ResponseBody
	@RequestMapping("/getQuestionbycmid")
	public List<CourseQuestion> getQuestionbycmid(int cmid){
		List<CourseQuestion> courseQuestion = courseQuestionService.getQuestionbycmid(cmid);
		return courseQuestion;

	}
	

	@ResponseBody
	@RequestMapping(value="/addCourseQuestion",method=RequestMethod.POST)
	public int addCourseNote(Integer userid,Integer cmid,String cqcontent){
		LogManager.getLogger().debug("addCourseQuestion 到达...");
		int result = courseQuestionService.addCourseQuestion(userid, cmid, cqcontent);
		return result;
	}

	@RequestMapping("/detailQuestion")
	public void detailAnswerbycqid(int cqid,HttpServletResponse response){
		CourseQuestion courseQuestion = courseQuestionService.detailAnswerbycqid(cqid);
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
			Gson gson=new Gson();
			out.println(gson.toJson(courseQuestion));
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	@ResponseBody
	@RequestMapping("/myQuestion")
	public List<CourseQuestion> getMyQuestion(String userid){
		List<CourseQuestion> question=courseQuestionService.getMyQuestionByUsid(userid);
		return question;
	}
	
	
	
	
}


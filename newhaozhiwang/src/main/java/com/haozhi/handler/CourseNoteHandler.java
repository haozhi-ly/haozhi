package com.haozhi.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.CourseNote;
import com.haozhi.service.CourseNoteService;

@Controller
@RequestMapping("/courseNote")
public class CourseNoteHandler {
	@Autowired
	private CourseNoteService courseNoteService;
	
	@ResponseBody
	@RequestMapping(value="/getCourseNoteById",method=RequestMethod.POST)
	public List<CourseNote> getCourseNoteById(Integer courseid){
		LogManager.getLogger().debug("getCourseNoteById 到达...");
		List<CourseNote> courseNote = courseNoteService.getCourseNoteById(courseid);
		return courseNote;
	}
	
	@ResponseBody
	@RequestMapping(value="/getCourseNoteByCmid",method=RequestMethod.GET)
	public List<CourseNote> getCourseNoteByCmid(Integer cmid){
		LogManager.getLogger().debug("getCourseNoteByCmid 到达...");
		List<CourseNote> courseNote = courseNoteService.getCourseNoteByCmid(cmid);
		return courseNote;
	}
	
	@ResponseBody
	@RequestMapping(value="/addCourseNote",method=RequestMethod.POST)
	public int addCourseNote(Integer userid,Integer cmid,String noteContent){
		LogManager.getLogger().debug("addCourseNote 到达...");
		int result = courseNoteService.addCourseNote(userid, cmid, noteContent);
		return result;
	}
	
}

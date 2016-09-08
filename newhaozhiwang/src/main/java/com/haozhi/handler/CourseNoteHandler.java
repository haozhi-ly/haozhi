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
	public List<CourseNote> getAllCourse(Integer courseid){
		LogManager.getLogger().debug("getCourseNoteById 到达...");
		List<CourseNote> courseNote = courseNoteService.getCourseNoteById(courseid);
		return courseNote;
	}
}

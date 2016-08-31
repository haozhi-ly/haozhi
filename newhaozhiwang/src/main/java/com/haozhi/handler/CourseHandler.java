package com.haozhi.handler;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.Course;
import com.haozhi.service.CourseService;

@Controller
@RequestMapping("/course")
@SessionAttributes("courses")
public class CourseHandler {
	@Autowired
	private CourseService courseService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("courses", new ArrayList<Course>());
	}
	
	
	@RequestMapping(value="/getAll",method=RequestMethod.POST)
	public String getAllCourse(ModelMap map){
		LogManager.getLogger().debug("getAllCourse 到达...");
		List<Course> courses = courseService.getAllCourse();
		System.out.println(courses);
		map.put("courses", courses);
		return "course";
	}
	
}

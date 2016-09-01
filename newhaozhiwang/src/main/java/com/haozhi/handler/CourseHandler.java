package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.Course;
import com.haozhi.service.CourseService;

@Controller
@RequestMapping("/course")
@SessionAttributes(value={"courses","hostcourse"})
public class CourseHandler {
	@Autowired
	private CourseService courseService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("courses", new ArrayList<Course>());
		map.put("hostcourse", new ArrayList<Course>());
	}
	
	/**
	 * 查所有的课程 以及
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getAll",method=RequestMethod.POST)
	public List<Course> getAllCourse(ModelMap map){
		LogManager.getLogger().debug("getAllCourse 到达...");
		List<Course> courses = courseService.getAllCourse();
		map.put("courses", courses);
		return courses;
	}
	
	/**
	 * 查热门课程的头三条
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getHostCourse",method=RequestMethod.POST)
	public List<Course> getHostCourse(ModelMap map){
		LogManager.getLogger().debug("getHostCourse 到达...");
		List<Course> courses = courseService.getHostCourse();
		map.put("hostcourse", courses);		
		return courses;
	}
	
	/**
	 * 根据课程类型来查课程
	 * @param id
	 * @param map
	 * @param out
	 */
	@ResponseBody
	@RequestMapping(value="/getCourseByCtid/{id}",method=RequestMethod.POST)
	public List<Course> getCourseByCtid(@PathVariable("id")Integer id,ModelMap map){
		LogManager.getLogger().debug("getCourseByCtid 到达..."+id);
		List<Course> courses =null;
		if(id!=0){
			 courses = courseService.getCourseByCtid(id);
		}else{
			courses = courseService.getAllCourse();
		}
		return courses;
	}
	
	@ResponseBody
	@RequestMapping(value="/getHostByCtid/{id}",method=RequestMethod.POST)
	public List<Course> getHostByCtid(@PathVariable("id")Integer id,ModelMap map){
		LogManager.getLogger().debug("getHostByCtid 到达...");
		List<Course> courses =null;
		if(id==0){
			courses = courseService.getHostCourse();
		}else{
			courses = courseService.getHostByCtid(id);
		}
		return courses;
	}
	
	@ResponseBody
	@RequestMapping(value="/selectCourseBy/{tid}{id}",method=RequestMethod.POST)
	public List<Course> selectCourseBy(@PathVariable("tid")Integer tid,@PathVariable("id")Integer id,ModelMap map){
		LogManager.getLogger().debug("selectCourseBy 到达...");
		List<Course> courses;
/*		if(id==0){
			courses =  courseService.getAllCourse();
		}
		courses  = courseService.getHostCourse();*/
		courses =  courseService.getAllCourse();
		System.out.println( tid+"呵呵哒"+id);
		map.put("courses", courses);		
		return courses;
	}
	

}

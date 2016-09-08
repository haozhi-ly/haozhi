package com.haozhi.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.CourseManage;
import com.haozhi.service.CourseManageService;

@Controller
@RequestMapping("/courseManage")
public class CourseManageHandler {
	
	@Autowired
	private CourseManageService courseManageService;
	
	/**
	 * 根据courseid查课时
	 * @param courseid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getCourseManageById",method=RequestMethod.POST)
	public List<CourseManage> getCourseManageById(Integer courseid){
		LogManager.getLogger().debug("getCourseManageById 到达...");
		List<CourseManage> courseManage = courseManageService.getCourseManagebyId(courseid);
		return courseManage;
	}
	
	/**
	 * 根据courseid查课时
	 * @param courseid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getPlayByCmid",method=RequestMethod.POST)
	public CourseManage getPlayByCmid(Integer cmid){
		LogManager.getLogger().debug("getPlayByCmid 到达...");
		CourseManage courseManage = courseManageService.getPlayByCmid(cmid);
		return courseManage;
	}
	
}

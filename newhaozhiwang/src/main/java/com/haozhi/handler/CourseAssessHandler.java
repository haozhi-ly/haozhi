package com.haozhi.handler;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.CourseAssess;
import com.haozhi.service.CourseAssessService;

@Controller
@RequestMapping("/courseAssess")
public class CourseAssessHandler {
	
	
	@Autowired
	private CourseAssessService courseAssessService;
	
	
	
	@ModelAttribute
	public void getModel(ModelMap map){
		
	}
	
	@ResponseBody
	@RequestMapping(value="/getAssessbypageDescTime",method=RequestMethod.POST)
	public List<CourseAssess> getAllCourse(String p,String courseid,ModelMap map){
		LogManager.getLogger().debug("课时评论");
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize", 20);
		hashmap.put("pagenumber", Integer.parseInt(p));
		hashmap.put("courseid", Integer.parseInt(courseid));
		List<CourseAssess> coursesassess = courseAssessService.getAssessbypageDescTime(hashmap);
		map.put("coursesassess", coursesassess);
		return coursesassess;
	}
	
	@ResponseBody
	@RequestMapping(value="/CMcountbycourseid",method=RequestMethod.POST)
	public int CMcountbycourseid(String courseid){	
		List<CourseAssess> coursesassess = courseAssessService.CMcountbycourseid(courseid);	
		return coursesassess.size();
	}
	
	
	/**
	 * 通过cmid来查评论，
	 * @param p
	 * @param cmid
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getAssessByCmidByPage",method=RequestMethod.POST)
	public List<CourseAssess> getAssessByCmidByPage(String p,Integer cmid,ModelMap map){
		LogManager.getLogger().debug("课时评论");
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize",5);
		hashmap.put("pagenumber", Integer.parseInt(p));
		hashmap.put("cmid", cmid);
		List<CourseAssess> coursesassess = courseAssessService.getAssessByCmidByPage(hashmap);
//		map.put("coursesassess", coursesassess);
		return coursesassess;
	}
	

	@ResponseBody
	@RequestMapping(value="/getAssesstopfour",method=RequestMethod.POST)
	public List<CourseAssess> getAssesstopfour(int courseid,ModelMap map){
		List<CourseAssess> coursesassess = courseAssessService.getAssesstopfour(courseid);
		map.put("coursesassess", coursesassess);
		return coursesassess;
	}
	
	@ResponseBody
	@RequestMapping(value="/getAssessCountByCmid",method=RequestMethod.POST)
	public int getAssessCountByCmid(Integer cmid){	
		List<CourseAssess> coursesassess = courseAssessService.getAssessCountByCmid(cmid);	
		return coursesassess.size();

	}

}

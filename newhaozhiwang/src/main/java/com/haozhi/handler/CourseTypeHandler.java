package com.haozhi.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haozhi.entity.CourseType;
import com.haozhi.service.CourseTypeService;

@Controller
@RequestMapping("/courseType")
public class CourseTypeHandler {
	@Autowired
	private CourseTypeService courseTypeService;
	
	@RequestMapping("/findAllType")
	public void findAllType(){
		List<CourseType> typelist=courseTypeService.findAlltype();
	}
		
}

package com.haozhi.service.impl;

import static org.junit.Assert.*;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.service.CourseTypeService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseTypeServiceImplTest {

	@Autowired
	private CourseTypeService courseTypeService;
	
	@Test
	public void testFindAlltype() {
		System.out.println("yes");
		System.out.println(courseTypeService.findAlltype());
		
	}
	@Test
	public void testFindAll() {
		System.out.println("yes");
		System.out.println(courseTypeService.findAllCourseType());
		
	}

}

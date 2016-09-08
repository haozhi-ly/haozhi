package com.haozhi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.Course;
import com.haozhi.entity.CourseManage;
import com.haozhi.service.CourseManageService;
import com.haozhi.service.CourseService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseManageServiceImplTest {
	@Autowired
	private CourseManageService courseManageService;

	@Test
	public void testgetCourseManageById() {
		List<CourseManage> course = courseManageService.getCourseManagebyId(6);
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void testgetPlayByCmid() {
		CourseManage course = courseManageService.getPlayByCmid(21);
		System.out.println(course);
	}

}

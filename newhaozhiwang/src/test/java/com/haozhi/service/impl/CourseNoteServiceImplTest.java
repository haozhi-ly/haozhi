package com.haozhi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.CourseNote;
import com.haozhi.service.CourseNoteService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseNoteServiceImplTest {
	@Autowired
	private CourseNoteService courseNoteService; 

	@Test
	public void test() {
		List<CourseNote> courseNote =courseNoteService.getCourseNoteById(6);
		System.out.println(courseNote);
	}
	
	@Test
	public void testgetCourseNoteByCmid() {
		List<CourseNote> courseNote =courseNoteService.getCourseNoteByCmid(1);
		System.out.println(courseNote);
	}

}

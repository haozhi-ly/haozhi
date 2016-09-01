package com.haozhi.ServiceImplTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.Course;
import com.haozhi.service.CourseService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseServiceImplTest {
	@Autowired
	private CourseService courseService;

	@Test
	public void testGetAllCourse() {
		List<Course> course = courseService.getAllCourse();
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void testInsertCourse() {
		Course  c = new Course();
		c.setCtitle("ps绘画教程（photoshop绘画）");c.setCintrodution("ps绘画教程（photoshop绘画）");
		c.setCtid(2);c.setCourseting("创意 设计");c.setCoursephoto("images/065247f5dc70390703.jpg");c.setUserId(3);
		boolean result = courseService.insertCourse(c);
		assertEquals(result, true);
	}

}

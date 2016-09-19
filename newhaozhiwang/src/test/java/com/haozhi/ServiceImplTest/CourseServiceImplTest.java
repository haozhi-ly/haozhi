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
	public void testCountCourse() {
		int course = courseService.countCourseByCtid(0);
		System.out.println(course);
		assertNotNull(course);
	}

	@Test
	public void testGetAllCourse() {
		List<Course> course = courseService.getAllCourse( 18, 2);
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void testGetHostCourse() {
		List<Course> course = courseService.getHostCourse();
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void testGetHostCourseByPage() {
		List<Course> course = courseService.getHostCourseByPage(0, 18, 1);
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

	@Test
	public void testGetCourseByCtid() {
		List<Course> course = courseService.getCourseByCtid(6, 18, 1);
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void testGetHostByCtid() {
		List<Course> course = courseService.getHostByCtid(2);
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void getCourseDescTime() {
		List<Course> course = courseService.getCourseDescTime(0, 18, 2);
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void getCourseById() {
		Course course = courseService.getCourseById(6);
		System.out.println(course);
		assertNotNull(course);
	}
	
/*	@Test
	public void seletCourse() {
		List<Course> course = courseService;
		System.out.println(course);
		assertNotNull(course);
	}*/
	
	
	@Test
	public void recommedCourseByCmid() {
		List<Course> course = courseService.recommedCourseByCmid(1);
		System.out.println(course);
		assertNotNull(course);
	}
	
	@Test
	public void studyingByUserid() {
		List<Course> course = courseService.studyingByUserid(2,2,41);
		System.out.println(course);
		assertNotNull(course);
	}
	
}

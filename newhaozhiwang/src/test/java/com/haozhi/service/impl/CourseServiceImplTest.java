package com.haozhi.service.impl;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.service.CourseService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseServiceImplTest {

	@Autowired
	private  CourseService courseService;
	@Test
	public void testGetStudentsbypageDescTime() {
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize", 24);
		hashmap.put("pagenumber", 1);
		hashmap.put("courseid", 6);
		System.out.println(courseService.getStudentsbypageDescTime(1,6));
	}

}

package com.haozhi.service.impl;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.service.CourseAssessService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseAssessServiceImplTest {

	@Autowired
	private CourseAssessService courseAssessService;
	@Test
	public void testCMcountbycourseid() {
		System.out.println(courseAssessService.CMcountbycourseid("6"));
	}
	@Test
	public void testgetAssessByCmid() {
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize", 5);
		hashmap.put("pagenumber", 1);
		hashmap.put("cmid", 1);
		System.out.println(courseAssessService.getAssessByCmidByPage(hashmap));
	}
	
	@Test
	public void getAssessCountByCmid() {
		System.out.println(courseAssessService.getAssessCountByCmid(1));
	}
	
}

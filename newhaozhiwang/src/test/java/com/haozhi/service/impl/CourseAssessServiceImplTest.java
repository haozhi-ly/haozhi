package com.haozhi.service.impl;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.CourseAssess;
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
	
	@Test
	public void getAddAssess() {
		CourseAssess ca = new CourseAssess();
		ca.setUserid(21);ca.setCmid(1);ca.setContent("终于可以自己做咖啡了，老师棒棒哒！！");
		int result=courseAssessService.addAssess(ca.getUserid(),ca.getCmid(),ca.getContent());
		System.out.println(result);
	}
	
}

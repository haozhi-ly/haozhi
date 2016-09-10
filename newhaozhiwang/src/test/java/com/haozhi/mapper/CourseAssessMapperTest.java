package com.haozhi.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.CourseAssess;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseAssessMapperTest {

	@Autowired
	private CourseAssessMapper courseAssessMapper;
	@Test
	public void testGetAssessbypageDescTime() {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagesize",10);
		map.put("pagenumber",1);
		map.put("courseid",6);
		List<CourseAssess> list=courseAssessMapper.getAssessbypageDescTime(map);
		System.out.println(list.toString());
	}
	
	@Test
	public void test() {
		
		List<CourseAssess> list=courseAssessMapper.test();
		System.out.println(list.toString());
	}
	
	@Test
	public void testCM() {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagesize",10);
		map.put("pagenumber",1);
		map.put("courseid",6);
		List<CourseAssess> list=courseAssessMapper.getAssessbypageDescTime(map);
		System.out.println(list.toString());
	}
	
	@Test
	public void testgetAssesstopfour() {
		
		List<CourseAssess> list=courseAssessMapper.getAssesstopfour(6);
		System.out.println(list.toString());
	}
}

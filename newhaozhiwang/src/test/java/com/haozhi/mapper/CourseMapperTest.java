package com.haozhi.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.Course;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseMapperTest {

	@Autowired
	private CourseMapper courseMapper;
	@Test
	public void testGetAllCoursebypage() {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagesize",5);
		map.put("pagenumber",1);
		List<Course> list=courseMapper.getCoursebypageDescTime(map);
		System.out.println(list.toString());
		
	}
	
	@Test
	public void testcountnumber() {
		Course course=new Course("","",1,"","",1,"2016-09-17 8:8:8");
		System.out.println(courseMapper.insertCourse(course));
	}

}

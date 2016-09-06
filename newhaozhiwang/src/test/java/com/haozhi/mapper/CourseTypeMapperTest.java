package com.haozhi.mapper;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.CourseType;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseTypeMapperTest {
	@Autowired
	private CourseTypeMapper courseTypeMapper;
	
	@Test
	public void testFindAllTypeByPage() {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagenumber",2);
		map.put("pagesize", 3);
		System.out.println(courseTypeMapper.findAllTypeByPage(map));
	}
	
	@Test
	public void testFindAllType() {
		
		System.out.println(courseTypeMapper.findAllType());
	}
	
	@Test
	public void testinsertCourseType(){
		courseTypeMapper.insertCourseType("java");
		//System.out.print();
	}
	@Test
	public void testupdateCourseType(){
		courseTypeMapper.updateCourseType(new CourseType(22,"c"));
		//System.out.print();
	}
	@Test
	public void testdeleteCourseType(){
		courseTypeMapper.deleteCourseType(new String[]{"2","3"});
		//System.out.print();
	}
	
	

}

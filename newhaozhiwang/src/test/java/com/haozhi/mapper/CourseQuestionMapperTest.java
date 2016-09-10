package com.haozhi.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseQuestionMapperTest {

	@Autowired
	private CourseQuestionMapper courseQuestionMapper;
	@Test
	public void testGetAllcourseQuestionbycourseid() {
		System.out.println(courseQuestionMapper.getAllcourseQuestionbycourseid(6));
	}

}

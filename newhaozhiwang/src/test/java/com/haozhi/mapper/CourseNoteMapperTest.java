package com.haozhi.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CourseNoteMapperTest {
	@Autowired
	private CourseNoteMapper courseNoteMapper;
	
	@Test
	public void testGetPersonNote() {
		System.out.println(courseNoteMapper.getPersonNote("41"));
	}

}

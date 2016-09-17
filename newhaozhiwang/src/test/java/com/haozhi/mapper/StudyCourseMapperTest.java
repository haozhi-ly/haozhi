package com.haozhi.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class StudyCourseMapperTest {
	
	@Autowired
	private StudyCourseMapper studyCourseMapper;
	@Test
	public void testPersentdynamicStudentsbycourseid() {
		System.out.println(studyCourseMapper.persentdynamicStudentsbycourseid(1));
	}

}

package com.haozhi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.StudyCourse;
import com.haozhi.service.StudyCourseService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class StudyCourseServiceImplTest {

	@Autowired
	private StudyCourseService studyCourseService;
	
	@Test
	public void testFindAlltype() {
		List<StudyCourse> studyCourse = studyCourseService.getStudyCourseByCmid(1);
		System.out.println(studyCourse);
	}

}

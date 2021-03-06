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
	
	@Test
	public void testcountStudyCourseByUseridCmid() {
		int count = studyCourseService.countStudyCourseByUseridCmid(21,1);
		System.out.println(count);
	}

	@Test
	public void test() {
		int count = studyCourseService.judgeStudyCourse(1, 6);
		System.out.println(count);
	}


}

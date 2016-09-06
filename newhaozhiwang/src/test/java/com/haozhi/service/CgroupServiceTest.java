package com.haozhi.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CgroupServiceTest {

	@Autowired
	private CgroupService cgroupService;
	
	@Test
	public void testGetAllgroupBypage() {
		System.out.println();
	}

}

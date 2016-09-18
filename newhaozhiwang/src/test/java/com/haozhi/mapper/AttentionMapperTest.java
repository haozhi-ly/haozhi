package com.haozhi.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AttentionMapperTest {
	
	@Autowired
	private AttentionMapper attentionMapper;
	@Test
	public void testGetAttentionInfo() {
		System.out.println(attentionMapper.getAttentionInfo("41"));
	}
	
	@Test
	public void testGetAttentionCount() {
		System.out.println(attentionMapper.getAttentionCount("41"));
	}
	
	@Test
	public void testFans() {
		System.out.println(attentionMapper.getFansInfo("41"));
	}
	
	@Test
	public void testgetFansCount() {
		System.out.println(attentionMapper.getFansCount("41"));
	}
	

}

package com.haozhi.mapper;

import static org.junit.Assert.*;

import org.junit.Test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.Cgroup;
import com.haozhi.entity.Course;
import com.haozhi.service.CgroupService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CgroupMapperTest {
	
	@Autowired
	private CgroupMapper groupMapper;
	
	@Test
	public void testGetListGroups() {
		System.out.println(groupMapper.getHostGroups());
	}
	
	@Test
	public void testGetNewGroups() {
		System.out.println(groupMapper.getNewGroups());
	}
	
	@Test
	public void testSearchGroups() {
		System.out.println(groupMapper.searchGroups("",9));
	}
	
	@Test
	public void testShowGroups() {
		System.out.println(groupMapper.showGroups("java开发"));
	}
	
	@Test
	public void testGetGroupsMember() {
		System.out.println(groupMapper.getGroupnumber("java开发"));
	}
	
	@Test
	public void testJoinGroupsMember() {
		System.out.println(groupMapper.joinGroups("2,1,4,3", "java开发"));
	}
}

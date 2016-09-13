package com.haozhi.service.impl;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.Cgroup;
import com.haozhi.service.CgroupService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CgroupServiceImplTest {
	
	@Autowired
	private CgroupService groupService;

	@Test
	public void testGetHostGroups() {
		List<Cgroup> group=groupService.getHostGroups();
		System.out.println(group);
		assertNotNull(group);
	}
	
	@Test
	public void testGetNewGroups() {
		List<Cgroup> group=groupService.getNewGroups();
		System.out.println(group);
		assertNotNull(group);
	}
	
	@Test
	public void testSearchGroups() {
		List<Cgroup> group=groupService.searchGroups("",9);
		System.out.println(group);
		assertNotNull(group);
	}
	
	@Test
	public void testShowGroups() {
		Cgroup group=groupService.showGroups("java开发");
		System.out.println(group);
		assertNotNull(group);
	}
	
	@Test
	public void testJoinGroups() {
		int group=groupService.joinGroups("2,1,4,3", "java开发");
		System.out.println(group);
		assertNotNull(group);
	}
	
	@Test
	public void testExitGroups() {
		boolean group=groupService.exitGroup("2,1,4,21", "java开发");
		System.out.println(group);
		assertNotNull(group);
	}

}

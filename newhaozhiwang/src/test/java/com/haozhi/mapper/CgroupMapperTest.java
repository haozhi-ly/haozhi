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
	private CgroupMapper cgroupMapper;
	@Test
	public void testFindAllgroupBypage() {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagesize",5);
		map.put("pagenumber",1);
		
		
		//cgroupMapper.findAll();
		List<Cgroup> list=cgroupMapper.findAllgroupBypage(map);
		System.out.println(list.toString());
	}

}

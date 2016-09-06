package com.haozhi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Cgroup;
import com.haozhi.mapper.CgroupMapper;
import com.haozhi.service.CgroupService;

@Service("cgroupService")
public class CgroupServiceImpl implements CgroupService{

	@Autowired 
	private CgroupMapper cgroupMapper;
	
	@Override
	public List<Cgroup> getAllgroupBypage(int pagesize, int pagenumber) {
		// TODO Auto-generated method stub
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagenumber",pagesize);
		map.put("pagesize", pagenumber);
		return cgroupMapper.findAllgroupBypage(map);
	}

	@Override
	public int findAll(){
		// TODO Auto-generated method stub
		return cgroupMapper.findAll();
	}

	@Override
	public boolean insertgroup(Cgroup group) {
		// TODO Auto-generated method stub
		return cgroupMapper.insertCgroup(group);
	}

}

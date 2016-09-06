package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Cgroup;
import com.haozhi.mapper.CgroupMapper;
import com.haozhi.service.CgroupService;

@Service("cgroupService")
public class CgroupServiceImpl implements CgroupService{
	
	@Autowired
	private CgroupMapper groupMapper;
	@Override
	public List<Cgroup> getHostGroups() {
		List<Cgroup> groups=groupMapper.getHostGroups();
		return groups;
	}
	@Override
	public List<Cgroup> getNewGroups() {
		List<Cgroup> groups=groupMapper.getNewGroups();
		return groups;
	}
	@Override
	public List<Cgroup> searchGroups(String keyWord) {
		List<Cgroup> groups=groupMapper.searchGroups(keyWord);
		return groups;
	}

}

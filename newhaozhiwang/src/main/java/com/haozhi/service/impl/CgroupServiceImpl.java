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


	@Autowired 
	private CgroupMapper cgroupMapper;
	
	@Override
	public List<Cgroup> getAllgroupBypage(int pagesize, int pagenumber) {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagenumber",pagesize);
		map.put("pagesize", pagenumber);
		return cgroupMapper.findAllgroupBypage(map);
	}

	@Override
	public int findAll(){
		return cgroupMapper.findAll();
	}

	@Override
	public boolean insertgroup(Cgroup group) {
		return cgroupMapper.insertCgroup(group);
	}
	@Override
	public List<Cgroup> searchGroups(String keyWord, Integer ctid) {
		List<Cgroup> groups=groupMapper.searchGroups(keyWord,ctid);
		return groups;
	}
	
	//显示小组详细信息页面时可用
	@Override
	public Cgroup showGroups(String groupname) {
		Cgroup group=groupMapper.showGroups(groupname);
		return group;
	}
	
}

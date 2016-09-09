package com.haozhi.service;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.Cgroup;

public interface CgroupService {


	List<Cgroup> getAllgroupBypage(int pagesize, int pagenumber);

	int findAll();

	boolean insertgroup(Cgroup group);
	List<Cgroup> getHostGroups();

	List<Cgroup> getNewGroups();


	List<Cgroup> searchGroups(String keyWord,Integer ctid);

	Cgroup showGroups(String groupname);

}

package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.Cgroup;

public interface CgroupService {

	List<Cgroup> getHostGroups();

	List<Cgroup> getNewGroups();


}

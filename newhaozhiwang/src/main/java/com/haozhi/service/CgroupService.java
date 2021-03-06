package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.Cgroup;

public interface CgroupService {


	List<Cgroup> getAllgroupBypage(int pagesize, int pagenumber);

	int findAll();

	boolean insertgroup(Cgroup group);
	List<Cgroup> getHostGroups();

	List<Cgroup> getNewGroups();


	List<Cgroup> searchGroups(String keyWord,Integer ctid);

	Cgroup showGroups(String groupname);

	int joinGroups(String groupnumber,String groupname);

	String getGroupnumber(String groupname);

	boolean exitGroup(String groupnumber,String groupname);

	List<Cgroup> getAllGroupInfo();

}


package com.haozhi.mapper;

import java.util.List;

import com.haozhi.entity.Cgroup;

public interface CgroupMapper {

	List<Cgroup> getHostGroups();

	List<Cgroup> getNewGroups();

	List<Cgroup> searchGroups(String keyWord);

}

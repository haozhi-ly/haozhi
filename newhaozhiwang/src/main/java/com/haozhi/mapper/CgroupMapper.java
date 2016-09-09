
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.Cgroup;

public interface CgroupMapper {

	List<Cgroup> findAllgroupBypage(Map<String, Object> map);

	int findAll();

	boolean insertCgroup(Cgroup group);
	List<Cgroup> getHostGroups();

	List<Cgroup> getNewGroups();

	List<Cgroup> searchGroups(@Param("keyWord")String keyWord,@Param("ctid")Integer ctid);

	Cgroup showGroups(String groupname);
}

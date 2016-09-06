
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.Cgroup;

public interface CgroupMapper {

	List<Cgroup> findAllgroupBypage(Map<String, Object> map);

	int findAll();

	boolean insertCgroup(Cgroup group);

}

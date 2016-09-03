package com.haozhi.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haozhi.entity.Cgroup;
import com.haozhi.service.CgroupService;

@Controller
@RequestMapping("/groups")
public class GroupsHandler {
	
	@Autowired
	private CgroupService groupService;
	
	@RequestMapping("/peopleCount")
	public String group(String groupname){
		//groupService.getPeopleCount(groupname);
		return null;
	}
}

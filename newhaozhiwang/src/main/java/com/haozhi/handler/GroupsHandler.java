package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.Cgroup;
import com.haozhi.service.CgroupService;

@Controller
@RequestMapping("/groups")
public class GroupsHandler {
	
	@Autowired
	private CgroupService groupService;
	
	@ResponseBody
	@RequestMapping("/hostgroups")
	public List<Cgroup> groupByDesc(Model model){
		List<Cgroup> groups= groupService.getHostGroups();
		model.addAttribute("groups", groups);
		return groups;
	}
}

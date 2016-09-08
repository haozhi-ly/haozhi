package com.haozhi.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.Cgroup;
import com.haozhi.service.CgroupService;
import com.haozhi.util.UsuallyUtil;

@Controller
@RequestMapping("/groups")
@SessionAttributes(value={"searchgroups"})
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
	
	@ResponseBody
	@RequestMapping("/newgroups")
	public List<Cgroup> newGroups(Model model){
		
		List<Cgroup> groups= groupService.getNewGroups();
		model.addAttribute("groups", groups);
		return groups;
	}
	
	//搜索小组
	@RequestMapping(value="/search")
	public String newSearchGroups(String keyWord,Model model){
		keyWord=new UsuallyUtil().decode(keyWord);
		System.out.println(keyWord);
		List<Cgroup> groups= groupService.searchGroups(keyWord,null);
		model.addAttribute("searchgroups", groups);
		return "groupSearch";
	}
	
	//点击更多（显示全部小组信息）
	@RequestMapping(value="/moresearch")
	public String newMoreGroups(Model model){
		List<Cgroup> groups= groupService.searchGroups(null,null);
		model.addAttribute("searchgroups", groups);
		return "groupSearch";
	}
	
	//点击导航栏查询小组
	@ResponseBody
	@RequestMapping(value="/navSearch")
	public List<Cgroup> newNavGroups(String keyWord,int ctid){
		List<Cgroup> groups= groupService.searchGroups(keyWord,ctid);
		return groups;
	}
}

package com.haozhi.handler;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	
	@RequestMapping(value="/search")
	public String newSearchGroups(String keyWord,Model model,HttpServletRequest request){
		keyWord=new UsuallyUtil().decode(keyWord);
		System.out.println(keyWord);
		List<Cgroup> groups= groupService.searchGroups(keyWord);
		model.addAttribute("searchgroups", groups);
		return "groupSearch";
	}
}

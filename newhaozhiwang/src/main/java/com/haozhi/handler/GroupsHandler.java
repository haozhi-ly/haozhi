package com.haozhi.handler;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.Cgroup;
import com.haozhi.entity.UserInfo;
import com.haozhi.service.CgroupService;
import com.haozhi.service.UserInfoService;
import com.haozhi.util.UsuallyUtil;

@Controller
@RequestMapping("/groups")
@SessionAttributes(value={"searchgroups","showgroups","joingroups"})
public class GroupsHandler {
	
	@Autowired
	private CgroupService groupService;
	@Autowired
	private UserInfoService userInfoService;
	
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
	
	//点击小组名称，跳转到详细页面
	@RequestMapping(value="/showsearch")
	public String showGroups(Model model,String groupname,String userid){
		System.out.println("userid==>"+userid);
		boolean flag=false;
		List<UserInfo> list=new ArrayList<UserInfo>();
		groupname=new UsuallyUtil().decode(groupname);
		Cgroup groups= groupService.showGroups(groupname);
		String groupnumber=groups.getGroupnumber();
		String[] sourceStrArray = groupnumber.split(",");
		for (int i = 0; i < sourceStrArray.length; i++) {
			UserInfo userInfo= userInfoService.getInfoByUserid(Integer.parseInt(sourceStrArray[i]));
			list.add(userInfo);
		    if(sourceStrArray[i].equals(userid)){
		    	System.out.println("userid==>"+userid);
		    	flag=true;
		    }
		}
		model.addAttribute("groupUser", list);
		if(flag==true){
	    	model.addAttribute("flag", true);
		}
		model.addAttribute("showgroups", groups);
		return "groupIntroduce";
	}
	
	//加入小组
	@RequestMapping(value="/joingroup")
	public String joinGroups(Model model,String groupMember,String groupname){
		groupMember=new UsuallyUtil().decode(groupMember);
		groupname=new UsuallyUtil().decode(groupname);
		if(groupMember==null || groupMember.equals("")){
			return "login";
		}
		String groupnumber=groupService.getGroupnumber(groupname);
		groupnumber=groupnumber+","+groupMember;
		int groups= groupService.joinGroups(groupnumber,groupname);
		model.addAttribute("joingroups", groups);
		return "redirect:../page/groupIntroduce.jsp";
	}
	
	//退出小组
	@RequestMapping(value="/exitgroup")
	public String exitGroup(Model model,String groupname,String userid){
		groupname=new UsuallyUtil().decode(groupname);
		Cgroup groups= groupService.showGroups(groupname);
		String groupnumber=groups.getGroupnumber();
		String[] sourceStrArray = groupnumber.split(",");
		List<String> userList = new ArrayList<String>();
		Collections.addAll(userList, sourceStrArray);
		for(int i=0;i<userList.size();i++){
			if(userList.get(i).equals(userid)){
				userList.remove(userList.get(i));
			}
		}
		groupnumber=userList.toString();
		System.out.println(groupnumber);
		if(groupService.exitGroup(groupnumber,groupname)==true){
			return "redirect:../page/groupIntroduce.jsp";
		}
		return "";
		
	}
}

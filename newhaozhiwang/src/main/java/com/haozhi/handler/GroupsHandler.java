package com.haozhi.handler;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
@SessionAttributes(value={"searchgroups","showgroups","groupUser"})
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
	@ResponseBody
	@RequestMapping(value="/showsearch")
	public Cgroup showGroups(String groupname,String userid){
		System.out.println("userid==>"+userid);
		Cgroup groups= groupService.showGroups(groupname);
		return groups;
	}
	
	//判断该用户是否已经加入小组
	@ResponseBody
	@RequestMapping("/user")
	public String check(String groupname,String userid){
		System.out.println("userid==>"+userid);
		Cgroup groups= groupService.showGroups(groupname);
		String groupnumber=groups.getGroupnumber();
		
		String[] sourceStrArray = groupnumber.split(",");
		for (int i = 0; i < sourceStrArray.length; i++) {
		    if(sourceStrArray[i].equals(userid)){
		    	System.out.println("userid==>"+userid);
		    	return userid;
		    }
		}
		return null;
	}
	
	//显示最近加入的成员
	@ResponseBody
	@RequestMapping("/groupMember")
	public List<UserInfo> joinMember(String groupname){
		Cgroup groups= groupService.showGroups(groupname);
		String groupnumber=groups.getGroupnumber();
		List<UserInfo> user=new ArrayList<UserInfo>();
		String[] sourceStrArray = groupnumber.split(",");
		for (int i = 0; i < sourceStrArray.length; i++) {
			UserInfo userInfo= userInfoService.getInfoByUserid(Integer.parseInt(sourceStrArray[i]));
			user.add(userInfo);
		}
		System.out.println("成员信息为："+user);
		return user;
	}
	
	//加入小组
	@RequestMapping(value="/joingroup")
	public String joinGroups(@ModelAttribute("joingroups")ModelMap map,String groupMember,String groupname){
		groupMember=new UsuallyUtil().decode(groupMember);
		groupname=new UsuallyUtil().decode(groupname);
		if(groupMember==null || groupMember.equals("")){
			return "login";
		}
		String groupnumber=groupService.getGroupnumber(groupname);
		if(groupnumber==null || groupnumber==""){
			groupnumber=groupMember+",";
		}else{
			groupnumber=groupnumber+","+groupMember;
		}
		int groups= groupService.joinGroups(groupnumber,groupname);
		map.put("joingroups", groups);
		//model.addAttribute("joingroups", groups);
		System.out.println("map==>"+map.get("joingroups"));
		return "1";
	}
	
	//退出小组
	@RequestMapping(value="/exitgroup")
	public String exitGroup(ModelMap map,String groupname,String userid,HttpSession session){
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
		groupnumber="";
		for(int j=0;j<userList.size();j++){
			if(j==userList.size()-1){
				groupnumber+=userList.get(j);
			}else{
				groupnumber+=userList.get(j)+",";
			}
		}
		System.out.println("退出小组==>"+groupnumber);
		if(groupService.exitGroup(groupnumber,groupname)==true){
			//map.put("joingroups", "");
			session.removeAttribute("joingroups");
			//System.out.println(session.getAttribute(""));
			map.put("flag", false);
			//return "redirect:../page/groupIntroduce.jsp";
			return "1";
		}
		return "";
		
	}
}

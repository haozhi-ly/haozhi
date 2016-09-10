package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.entity.Admin;
import com.haozhi.service.AdminService;


@Controller
@RequestMapping("/admin")
/*@SessionAttributes(value={"admin"})*/
public class AdminHandler {
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/loginadmin")
	public void loginadmin(Admin admin,String aname,String apassword,PrintWriter out,HttpSession session,HttpServletResponse response){
		admin.setAname(aname);
		 admin.setApassword(apassword);
		Admin admins=adminService.loginadmin(admin);
		response.setContentType("text/html");
		if(admins == null){
			out.print(0);
		}else{
			out.print(1);
			session.setAttribute("myself", admins);
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping("/findmyself")
	public void findmyself(Admin admin,HttpSession session,PrintWriter out){
		Admin myself=(Admin) session.getAttribute("myself");
		admin.setAid(myself.getAid());
		Admin admins=adminService.findmyself(admin);
		JSONArray json = JSONArray.fromObject(admins);
		JSONObject jb = new JSONObject();
		jb.put("rows", json);
		jb.put("total",1);
		out.print(jb);
		out.flush();
		out.close();
		
	}
	@ResponseBody
	@RequestMapping("/findAll")
	public Map<String, Object> findAll(){
		List<Admin> admins=adminService.findAll();
		int count=adminService.count();
		System.out.println(admins);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("rows", admins);
		result.put("total",count);
		return result;
	}
	
	@RequestMapping("/addadmin")
	public void addadmin(Admin admin,String aname,String apassword,String email,PrintWriter out){
		admin.setAname(aname);
		admin.setApassword(apassword);
		admin.setEmail(email);
		int admins=adminService.addadmin(admin);
		out.print(admins);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/deladmin")
	public void deladmin(String aid,PrintWriter out){
		String arr[] = aid.split(",");
		Integer[] intarr = new Integer[arr.length];
		for(int i=0;i<arr.length;i++){
			intarr[i] = Integer.parseInt(arr[i]);
		}
		int result=adminService.deladmin(intarr);
		out.print(result);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/updateadmin")
	public void updateadmin(Admin admin,PrintWriter out){
		int result=adminService.updateadmin(admin);
		out.print(result);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/register")
	public void register(Admin admin,String aname,String apassword,String email,PrintWriter out,HttpServletResponse response){
		admin.setAname(aname);
		admin.setApassword(apassword);
		admin.setEmail(email);
		int result=adminService.register(admin);
		response.setContentType("text/html");
		if(result >0){
			out.print(1);
		}else{
			out.print(0);
		}
		out.flush();
		out.close();
	}
}

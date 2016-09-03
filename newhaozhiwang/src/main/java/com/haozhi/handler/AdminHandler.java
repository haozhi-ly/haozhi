package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haozhi.entity.Admin;
import com.haozhi.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminHandler {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/findAll")
	public void findAll(PrintWriter out){
		List<Admin> admins=adminService.findAll();
		int count=adminService.count();
		JSONArray json = JSONArray.fromObject(admins);
		JSONObject jb = new JSONObject();
		jb.put("rows", json);
		jb.put("total",count);
		out.print(jb);
		out.flush();
		out.close();
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
}

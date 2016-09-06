package com.haozhi.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haozhi.entity.Admin;
import com.haozhi.service.AdminService;


@Controller
@RequestMapping("/admin")
/*@SessionAttributes(value={"admin"})*/
public class AdminHandler {
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/loginadmin")
	public void loginadmin(Admin admin,String aname,String apassword,PrintWriter out,HttpSession session){
		admin.setAname(aname);
		 admin.setApassword(apassword);
		Admin admins=adminService.loginadmin(admin);
		session.setAttribute("myself", admins);
		JSONArray json = JSONArray.fromObject(admins);
		JSONObject jb = new JSONObject();
		jb.put("rows", json);
		out.print(jb);
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
	
	@RequestMapping("/findAll")
	public void findAll(PrintWriter out,HttpServletResponse response){
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
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
	
	@RequestMapping("/updateadmin")
	public void updateadmin(Admin admin,PrintWriter out){
		int result=adminService.updateadmin(admin);
		out.print(result);
		out.flush();
		out.close();
	}
}

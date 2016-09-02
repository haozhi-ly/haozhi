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
		JSONArray json = JSONArray.fromObject(admins);
		JSONObject jb = new JSONObject();
		jb.put("rows", json);
		jb.put("total",1);
		out.print(jb);
		out.flush();
		out.close();
	}
	
}

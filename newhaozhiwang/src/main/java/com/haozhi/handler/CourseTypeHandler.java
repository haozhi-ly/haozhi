package com.haozhi.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.haozhi.entity.CourseType;
import com.haozhi.service.CourseTypeService;

@Controller
@RequestMapping("/courseType")
public class CourseTypeHandler {
	@Autowired
	private CourseTypeService courseTypeService;
	
	@RequestMapping("/findAllTypeByPage")
	public void findAllType(String page,String rows,String sort,String order,HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		List<CourseType> typelist=courseTypeService.findAlltypebypage(Integer.parseInt(page),Integer.parseInt(rows));
		int count=courseTypeService.findAlltype();
		JSONArray json = JSONArray.fromObject(typelist);
		JSONObject jb = new JSONObject();
		jb.put("rows", json);
		jb.put("total",count);
		out.print(jb);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/findAllCourseType")
	public void findAllCourseType(HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String str="";
		List<CourseType> typelist=courseTypeService.findAllCourseType();
		Gson gson=new Gson();
		str=gson.toJson(typelist);
		out.print(str);
		out.flush();
		out.close();
	}
	
	
	
	
	
	
	
	@RequestMapping("/addCourseType")
	public void addCourseType(String typename,HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		boolean result =courseTypeService.addCourseType(typename);
		
		out.print(result);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/updateCourseType")
	public void updateCourseType(String tid,String typename,HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		boolean result =courseTypeService.updateCourseType(new CourseType(Integer.parseInt(tid),typename));
		
		out.print(result);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/deleteCourseType")
	public void deleteCourseType(String ctid,HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String[] ctids=ctid.split(",");
		boolean result =courseTypeService.deleteCourseType(ctids);
		
		out.print(result);
		out.flush();
		out.close();
	}
		
}

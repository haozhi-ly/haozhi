package com.haozhi.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.haozhi.entity.CourseManage;
import com.haozhi.service.CourseManageService;

@Controller
@RequestMapping("/courseManage")
public class CourseManageHandler {
	
	@Autowired
	private CourseManageService courseManageService;
	
	/**
	 * 根据courseid查课时
	 * @param courseid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getCourseManageById",method=RequestMethod.POST)
	public List<CourseManage> getCourseManageById(Integer courseid){
		LogManager.getLogger().debug("getCourseManageById 到达...");
		List<CourseManage> courseManage = courseManageService.getCourseManagebyId(courseid);
		return courseManage;
	}
	
	/**
	 * 根据courseid查课时
	 * @param courseid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getPlayByCmid",method=RequestMethod.POST)
	public CourseManage getPlayByCmid(Integer cmid){
		LogManager.getLogger().debug("getPlayByCmid 到达...");
		CourseManage courseManage = courseManageService.getPlayByCmid(cmid);
		return courseManage;
	}
	
	/**
	 * 根据cmid
	 * @param courseid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectTeachInfo",method=RequestMethod.POST)
	public CourseManage selectTeachInfo(Integer cmid){
		LogManager.getLogger().debug("selectTeachInfo 到达...");
		CourseManage courseManage = courseManageService.selectTeachInfo(cmid);
		return courseManage;
	}
	
	@RequestMapping("/addlession")
	public void addlession(CourseManage courseManage,int type,String title,String pathOrContetn,String cmintroduction,PrintWriter out,HttpSession session){
		int courseid=courseManageService.findcourseid();
		System.out.println(courseid);
		String courseseqs=courseManageService.findcourseseq(courseid);
		System.out.println(courseseqs);
		if(courseseqs==null){
			int courseseq=1;
			System.out.println(courseseq);
			courseManage.setCourseseq(courseseq);
			session.setAttribute("courseseq", courseseq);
		}else{
			int courseseq=Integer.parseInt(courseseqs)+1;
			
			System.out.println(courseseq);
			courseManage.setCourseseq(courseseq);
			session.setAttribute("courseseq", courseseq);
		}
		courseManage.setTitle(title);
		courseManage.setType(type);
		courseManage.setPathOrContetn(pathOrContetn);
		courseManage.setCmintroduction(cmintroduction);
		courseManage.setCourseid(courseid);
		System.out.println(courseManage);
		int result=courseManageService.addlession(courseManage);
		Gson gson = new Gson();
		String cs = gson.toJson(courseManage);
		if(result>0){
			out.print(cs);
			session.setAttribute("addlessions", 1);
			session.setAttribute("cManage", courseManage);
		}
		out.flush();
		out.close();
	}
	/**
	 * 根据cmid
	 * @param courseid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getCourseManageByCmid",method=RequestMethod.GET)
	public List<CourseManage> getCourseManageByCmid(Integer cmid){
		LogManager.getLogger().debug("getCourseManageByCmid 到达...");
		List<CourseManage> courseManage = courseManageService.getCourseManagebyCmid(cmid);
		return courseManage;
	}
	
	@RequestMapping("/findAllcourseseq")
	public void findAllcourseseq(PrintWriter out,HttpSession session){
		CourseManage nowcourseManage=(CourseManage) session.getAttribute("cManage");
		if(nowcourseManage!=null){
		String courseids=String.valueOf(nowcourseManage.getCourseid());
		System.out.println(courseids);
			int courseid=Integer.parseInt(courseids);
			List<CourseManage> courseManage = courseManageService.findAllcourseseq(courseid);
			System.out.println(courseManage);
			if(courseManage!=null){
				Gson gson = new Gson();
				String  courseManages= gson.toJson(courseManage);
				out.print(courseManages);
			}
			out.flush();
			out.close();
		}else{
			out.print(0);
		}
	}
}

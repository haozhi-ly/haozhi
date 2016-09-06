package com.haozhi.handler;


import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.Course;
import com.haozhi.service.CourseService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import sun.misc.BASE64Decoder;

@Controller
@RequestMapping("/course")
@SessionAttributes(value={"courses","hostcourse"})
public class CourseHandler {
	@Autowired
	private CourseService courseService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("courses", new ArrayList<Course>());
		map.put("hostcourse", new ArrayList<Course>());
	}
	
	/**
	 * 查所有的课程 以及
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getAll",method=RequestMethod.POST)
	public List<Course> getAllCourse(ModelMap map){
		LogManager.getLogger().debug("getAllCourse 到达...");
		List<Course> courses = courseService.getAllCourse();
		map.put("courses", courses);
		return courses;
	}
	
	/**
	 * 查热门课程的头三条
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getHostCourse",method=RequestMethod.POST)
	public List<Course> getHostCourse(ModelMap map){
		LogManager.getLogger().debug("getHostCourse 到达...");
		List<Course> courses = courseService.getHostCourse();
		map.put("hostcourse", courses);		
		return courses;
	}
	
	/**
	 * 根据课程类型来查课程
	 * @param id
	 * @param map
	 * @param out
	 */
	@ResponseBody
	@RequestMapping(value="/getCourseByCtid/{id}",method=RequestMethod.POST)
	public List<Course> getCourseByCtid(@PathVariable("id")Integer id,ModelMap map){
		LogManager.getLogger().debug("getCourseByCtid 到达..."+id);
		List<Course> courses =null;
		if(id!=0){
			 courses = courseService.getCourseByCtid(id);
		}else{
			courses = courseService.getAllCourse();
		}
		return courses;
	}
	
	/**
	 * 通过ctid来查热门课程
	 * @param id
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getHostByCtid/{id}",method=RequestMethod.POST)
	public List<Course> getHostByCtid(@PathVariable("id")Integer id,ModelMap map){
		LogManager.getLogger().debug("getHostByCtid 到达...");
		List<Course> courses =null;
		if(id==0){
			courses = courseService.getHostCourse();
		}else{
			courses = courseService.getHostByCtid(id);
		}
		return courses;
	}
	
	/**
	 * 通过
	 * @param tid  课程类型
	 * @param id   按什么排序
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectCourseBy/{id}",method=RequestMethod.POST)
	public List<Course> selectCourseBy(Integer tid,@PathVariable("id")String iid,Integer id,ModelMap map){
		LogManager.getLogger().debug("selectCourseBy 到达...");
		List<Course> courses;
		String ttid= String.valueOf(iid).substring(0,1);
		iid = String.valueOf(iid).substring(1,2);
		tid = Integer.parseInt(ttid); id = Integer.parseInt(iid);
		if(id==0){
			courses =  courseService.getAllCourse(); //为0代表为综合排序
		}else if(id==1){
			courses = courseService.getCourseDescTime(tid);  //为1代表为按时间排序
		}else{
			courses = courseService.getHostByCtid(tid);  //为2代表为按热门排序
		}
		System.out.println( tid+"呵呵哒"+id);
		map.put("courses", courses);		
		return courses;
	}
	
	@RequestMapping("/getAllcoursebypage")
	public void getAllcoursebypage(String page,String rows,String sort,String order,HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Course> typelist=courseService.getAllCourseBypage(Integer.parseInt(rows),Integer.parseInt(page));
		int count=courseService.findAlltype();
		//Gson gson=new Gson();
		//String liststr=gson.toJson(typelist);
		JSONArray json = JSONArray.fromObject(typelist);
		JSONObject jb = new JSONObject();
		System.out.println(jb.toString());
		jb.put("rows", json);
		jb.put("total",count);
		out.print(jb);
		out.flush();
		out.close();
	}
	@RequestMapping("/addCourse")
	public void addCourse(String coursephoto,String ctid,String ctitle,String courseting,String userId,String createTime,String ctintrodution,HttpServletResponse response){
		System.out.println("我进来了");
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BASE64Decoder decoder = new BASE64Decoder();  
		System.out.println(coursephoto);
		coursephoto = coursephoto.replaceAll("data:image/png;base64,", "");  
	   
   
        // Base64解码  
        byte[] b=null;
		try {
			b = decoder.decodeBuffer(coursephoto);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
        for (int i = 0; i < b.length; ++i) {  
            if (b[i] < 0) {// 调整异常数据  
                b[i] += 256;  
            }  
        }
        // 生成jpeg图片  
        long temp=System.currentTimeMillis()+new Random().nextInt(100000);
        String filename=temp+".png";
        System.out.println(filename);
        String photopath="../img/headimg/"+filename;
        FileOutputStream fos;
	try {
		fos = new FileOutputStream("G:\\yc\\apache-tomcat-7.0.30\\webapps\\img\\headimg\\"+filename);
		fos.write(b);  
        fos.flush();  
        fos.close(); 
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
		Date date=new Date();
		createTime=createTime+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
        Course course=new Course(ctitle,ctintrodution,Integer.parseInt(ctid),courseting,photopath,Integer.parseInt(userId),createTime);
        
        boolean result=courseService.insertCourse(course);
       
		out.print(result);
		out.flush();
		out.close();
	}
	
	

}

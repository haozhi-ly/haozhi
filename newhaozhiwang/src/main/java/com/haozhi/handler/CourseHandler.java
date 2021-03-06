package com.haozhi.handler;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.haozhi.entity.Communiacte;
import com.haozhi.entity.Course;
import com.haozhi.entity.CourseType;
import com.haozhi.entity.StudyCourse;
import com.haozhi.entity.UserInfo;
import com.haozhi.service.CourseService;
import com.haozhi.service.CourseTypeService;
import com.haozhi.util.HaozhiProtocol;

import io.goeasy.GoEasy;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import sun.misc.BASE64Decoder;


@Controller
@RequestMapping("/course")
@SessionAttributes(value={"courses","hostcourse"})
public class CourseHandler {
	
	@Autowired
	private CourseService courseService;
	
	@Autowired 
	private CourseTypeService courseTypeService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("courses", new ArrayList<Course>());
		map.put("hostcourse", new ArrayList<Course>());
		map.put("personCourse", new ArrayList<Course>());
	}
	
	
	
	/**
	 * 查所有的课程总数
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/countCourseByCtid",method=RequestMethod.GET)
	public int countCourseByCtid(Integer ctid){
		LogManager.getLogger().debug("countCourseByCtid 到达...");
		int count = courseService.countCourseByCtid(ctid);
		return count;
	}
	
	
	/**
	 * 查所有的课程 以及
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getAll",method=RequestMethod.POST)
	public List<Course> getAllCourse(String p,ModelMap map){
		System.out.println("p为:"+p);
		LogManager.getLogger().debug("getAllCourse 到达...");
		int  pagesize =18;
		int pagenumber=Integer.parseInt(p);
		List<Course> courses = courseService.getAllCourse( pagesize, pagenumber);
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
	@RequestMapping(value="/getCourseByCtid",method=RequestMethod.POST)
	public List<Course> getCourseByCtid(String p,Integer ctid){
		LogManager.getLogger().debug("getCourseByCtid 到达..."+ctid);
		List<Course> courses =null;
		int  pagesize =18;int pagenumber=Integer.parseInt(p);
		if(ctid!=0){			
			 courses = courseService.getCourseByCtid(ctid, pagesize, pagenumber);
		}else{
			courses = courseService.getAllCourse(pagesize, pagenumber);
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
	@RequestMapping(value="/selectCourseBy",method=RequestMethod.POST)
	public List<Course> selectCourseBy(String p,Integer ctid,Integer id){
		LogManager.getLogger().debug("selectCourseBy 到达...");
		List<Course> courses;
		int  pagesize =18;int pagenumber=Integer.parseInt(p);
		if(id==0){
			courses =  courseService.getAllCourse(pagesize,pagenumber); //为0代表为综合排序
		}else if(id==1){
			courses = courseService.getCourseDescTime(ctid,pagesize,pagenumber);  //为1代表为按时间排序
		}else{
			courses = courseService.getHostCourseByPage(ctid, pagesize, pagenumber);  //为2代表为按热门排序
		}
		System.out.println( ctid+"呵呵哒"+id);
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
	@RequestMapping(value="/selectCourseByTime",method=RequestMethod.POST)
	public List<Course> selectCourseByTime(String p,Integer ctid){
		LogManager.getLogger().debug("selectCourseByTime 到达...");
		List<Course> courses;
		int  pagesize =18;int pagenumber=Integer.parseInt(p);
		courses = courseService.getCourseDescTime(ctid,pagesize,pagenumber);  //为1代表为按时间排序
		return courses;
	}
	
	@ResponseBody
	@RequestMapping(value="/selectCourseByHost",method=RequestMethod.POST)
	public List<Course> selectCourseByHost(String p,Integer ctid){
		LogManager.getLogger().debug("selectCourseByHost 到达...");
		List<Course> courses;
		int  pagesize =18;int pagenumber=Integer.parseInt(p);
		courses = courseService.getHostCourseByPage(ctid, pagesize, pagenumber);  //为1代表为按时间排序
		return courses;
	}
	
	@ResponseBody
	@RequestMapping(value="/selectCourseByZH",method=RequestMethod.POST)
	public List<Course> selectCourseByZH(String p,Integer ctid){
		LogManager.getLogger().debug("selectCourseByZH 到达...");
		List<Course> courses;
		int  pagesize =18;int pagenumber=Integer.parseInt(p);
		courses = courseService.getAllCourse(pagesize,pagenumber);  //为1代表为按时间排序
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
	public void addCourse(String coursephoto,String ctid,String ctitle,String courseting,String userId,String createTime,String ctintrodution,HttpServletResponse response,HttpServletRequest request){
		System.out.println("我进来了");
		System.out.println();
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
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
		fos = new FileOutputStream(request.getServletContext().getRealPath("../img/headimg/")+"/"+filename);
		//System.out.println(servletcontext.getRealPath("../img/headimg/"));
		//fos = new FileOutputStream(request.getServletContext().getRealPath("../img/headimg/")+filename);

		
		fos.write(b);  
        fos.flush();  
        fos.close(); 
	} catch (Exception e) {
		e.printStackTrace();
	}  
		Date date=new Date();
		createTime=createTime+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
        Course course=new Course(ctitle,ctintrodution,Integer.parseInt(ctid),courseting,photopath,Integer.parseInt(userId),createTime);
        
        System.out.println(course.toString());
        boolean result=courseService.insertCourse(course);
       
		out.print(result);
		out.flush();
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="/getCourseById",method=RequestMethod.POST)
	public Course getCourseById(Integer courseid){
		LogManager.getLogger().debug("getCourseById 到达...");
		Course course = courseService.getCourseById(courseid);
		return course;
	}
	
	@ResponseBody
	@RequestMapping(value="/getAllStudentNumber",method=RequestMethod.POST)
	public int getAllStudentNumber(Integer courseid){
		List<StudyCourse> courselist = courseService.getAllStudentNumber(courseid);
		return courselist.size();
	}
	
	
	@RequestMapping(value="/getStudentsbypageDescTime",method=RequestMethod.POST)
	public void getStudentsbypageDescTime(String p,String courseid,ModelMap map,HttpServletResponse response){
		PrintWriter out=null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("charset=utf-8");
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		List<Course> courselist = courseService.getStudentsbypageDescTime(Integer.parseInt(p),Integer.parseInt(courseid));
		
		System.out.println(courselist);
		Gson gson=new Gson();
		out.print(gson.toJson(courselist));
		out.flush();
		out.close();
	}
	
	@RequestMapping("/basic")
	public void savebasic(CourseType courseType,PrintWriter out,String ctitle,String cintroduction,int ctid,String courseting,HttpSession session){
		courseType.setCtid(ctid);
		CourseType courseTypes=courseTypeService.findByctid(courseType);
		session.setAttribute("ctitle", ctitle);
		session.setAttribute("cintroduction", cintroduction);
		session.setAttribute("ctid", ctid);
		session.setAttribute("courseting", courseting);
		session.setAttribute("basicstatus", "1");
		session.setAttribute("courseType", courseTypes);
		if(cintroduction ==null){
			out.print(1);
		}else if(ctid<0){
			out.print(2);
		}else if(courseting==null){
			out.print(3);
		}else{
			out.print(4);
		}
		out.flush();
		out.close();
}
	/**
	 * 推荐课程
	 * @param cmid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/recommedCourseByCmid",method=RequestMethod.POST)
	public List<Course> recommedCourseByCmid(Integer cmid){
		List<Course> courselist = courseService.recommedCourseByCmid(cmid);
		return courselist;
	}
	
	
	@ResponseBody
	@RequestMapping("/editor")
	public Object uploadApk( @RequestParam(value = "upload-file") MultipartFile apkFile,
			HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("yesyse");
		Map<String,Object> resMap = new HashMap<String,Object>();
		String str="";
		if (apkFile != null) {
			//获取保存的路径，
			String realPath = request.getServletContext().getRealPath("../img/headimg");
			if (apkFile.isEmpty()) {
				System.out.println("yes");
				// 未选择文件
			} else{
				System.out.println("yes");

				// 文件原名称
				String originFileName = apkFile.getOriginalFilename();
				 long temp=System.currentTimeMillis()+new Random().nextInt(100000);
				  str=temp+originFileName.substring(originFileName.indexOf("."));
				System.out.println(originFileName);
				try {
					//这里使用Apache的FileUtils方法来进行保存
					FileUtils.copyInputStreamToFile(apkFile.getInputStream(),
							new File(realPath, str));
					
				} catch (IOException e) {
					System.out.println("文件上传失败");
					
					e.printStackTrace();
				}
			}

		}
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		session.setAttribute("coursephoto", str);
		session.setAttribute("picturestatus", 1);
		if(str!= null){
			Course course=new Course();
			String ctitle=(String) session.getAttribute("ctitle");
			String cintroduction=(String) session.getAttribute("cintroduction");
			int ctid=(int) session.getAttribute("ctid");
			String courseting=(String) session.getAttribute("courseting");
			UserInfo user=(UserInfo) session.getAttribute("users");
			course.setCtitle(ctitle);
			course.setCintrodution(cintroduction);
			course.setCtid(ctid);
			course.setCourseting(courseting);
			course.setCoursephoto("../img/headimg/"+str);
			course.setUserId(user.getUserid());
			System.out.println(user.getUserid());
			int courses=courseService.createcourse(course);
			resMap.put("filename", str);
		}
		
		System.out.println("yes");
		return resMap;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("/savepicture")
	public void savepicture(Course course,PrintWriter out,String coursephoto,HttpSession session,HttpServletRequest request){
		
		
	
		
		BASE64Decoder decoder = new BASE64Decoder();  
		coursephoto = coursephoto.replaceAll("data:image/png;base64,", "");  
		// Base64解码  
		byte[] b=null;
		try {
			b = decoder.decodeBuffer(coursephoto);
		} catch (IOException e) {
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
		String photopath="../coursePic/"+filename;
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(request.getServletContext().getRealPath("../coursePic/")+"/"+filename);
			fos.write(b);  
			fos.flush();  
			fos.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		} 
		session.setAttribute("coursephoto", filename);
		session.setAttribute("picturestatus", 1);
		if(filename!= null){
			out.print(filename);
			String ctitle=(String) session.getAttribute("ctitle");
			String cintroduction=(String) session.getAttribute("cintroduction");
			int ctid=(int) session.getAttribute("ctid");
			String courseting=(String) session.getAttribute("courseting");
			UserInfo user=(UserInfo) session.getAttribute("users");
			course.setCtitle(ctitle);
			course.setCintrodution(cintroduction);
			course.setCtid(ctid);
			course.setCourseting(courseting);
			course.setCoursephoto(filename);
			course.setUserId(user.getUserid());
			System.out.println(course.toString());
			int courses=courseService.createcourse(course);
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping("/sendtitle")
	public void sendtitle(PrintWriter out,String coursename,HttpSession session){
		System.out.println(coursename);
		session.setAttribute("ctitle",coursename);
		out.print(1);
		out.flush();
		out.close();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/studyingByUserid",method=RequestMethod.POST)
	public List<Course> studyingByUserid(Integer userid,String p){
		int  pagesize =2;
		int pagenumber=Integer.parseInt(p);
		List<Course> courselist = courseService.studyingByUserid(pagesize, pagenumber, userid);
		return courselist;
	}
	
	

	
/*	热门课程
*/	
	@ResponseBody
	@RequestMapping("/mainHotCourse")
	public List<Course> mainHotCourse(HttpServletResponse response){
		
		return courseService.mainHotCourse();
	}

	/*精品课程*/

	@ResponseBody
	@RequestMapping("/goodCourse")
	public List<Course> goodCourse(HttpServletResponse response){		
		GoEasy g=new GoEasy("4ea18126-cec1-4cce-8569-ad314901d30d");
		System.out.println(g);
		//g.publish("eb367e1f-1b28-4ce2-a32d-cd5347de7816","Hello, GoEasy!");
		g.publish("eb367e1f-1b28-4ce2-a32d-cd5347de7816", "Hello, GoEasy!");
		return courseService.goodCourse();
		
	}
	
	@ResponseBody
	@RequestMapping(value="/getMainCoruseByctid",method=RequestMethod.POST)
	public List<Course> getMainCoruseByctid(int ctid){
		List<Course> courses =null;
		if(ctid!=0){
			 courses =courseService.getmainCourseByCtid(ctid);
		}else{
			courses =courseService.goodCourse();
		}
		List<Integer> list=new ArrayList<Integer>();
		list.add(122);
		list.add(1);
		Communiacte communiacte=new Communiacte(list);
		HaozhiProtocol<Communiacte> content=new HaozhiProtocol<Communiacte>(HaozhiProtocol.Inform, communiacte);
		System.out.println(content.toString());
		GoEasy g=new GoEasy("4ea18126-cec1-4cce-8569-ad314901d30d");
		//g.publish("eb367e1f-1b28-4ce2-a32d-cd5347de7816","Hello, GoEasy!");
		g.publish("eb367e1f-1b28-4ce2-a32d-cd5347de7816",content.toString());
		return courses;
	}

}

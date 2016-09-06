package com.haozhi.handler;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

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

import com.haozhi.entity.Cgroup;
import com.haozhi.service.CgroupService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import sun.misc.BASE64Decoder;

@Controller
@RequestMapping("/group")
public class groupHandler {
	@Autowired
	private CgroupService cgroupService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		
	}
	
	@RequestMapping("/getAllgroupbypage")
	public void getAllgroupbypage(String page,String rows,String sort,String order,HttpServletResponse response){
		PrintWriter out=null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("charset=utf-8");
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Cgroup> typelist=cgroupService.getAllgroupBypage(Integer.parseInt(page),Integer.parseInt(rows));
		int count=cgroupService.findAll();
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
	@RequestMapping("/addgroup")
	public void addgroup(String groupphoto,String ctid,String ctitle,String groupting,String userId,String createTime,String ctintrodution,HttpServletResponse response){
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
		System.out.println(groupphoto);
		groupphoto = groupphoto.replaceAll("data:image/png;base64,", "");  
	   
   
        // Base64解码  
        byte[] b=null;
		try {
			b = decoder.decodeBuffer(groupphoto);
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
        Cgroup group=new Cgroup();
        boolean result=cgroupService.insertgroup(group);
       
		out.print(result);
		out.flush();
		out.close();
	}
	
	

}

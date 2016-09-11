package com.haozhi.handler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import sun.misc.BASE64Decoder;

import com.haozhi.entity.UserInfo;
import com.haozhi.service.UserInfoService;
import com.haozhi.util.RandomNumUtil;
import com.haozhi.util.UsuallyUtil;



@Controller
@RequestMapping("/userinfo")
@SessionAttributes(value={"users","yzm"})
public class UserHandler {
	@Autowired
	private UserInfoService userInfoService;

	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("users",new UserInfo());
	}
	//不要再用modelAttribute了要存入session直接用Model 
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@ModelAttribute("users")UserInfo userInfo,Model model,ModelMap map){
		String name=userInfo.getUname();

		name=new UsuallyUtil().decode(name);
		if(userInfo!=null && name.contains("@")){
			userInfo=userInfoService.loginByEamil(userInfo);
			map.put("users", userInfo);
			//model.addAttribute("users", userInfo);
		}else if(userInfo!=null && !name.contains("@")){
			userInfo.setUname(name);
			userInfo.toString();
			userInfo=userInfoService.loginByUname(userInfo);
			map.put("users", userInfo);
			//model.addAttribute("users", userInfo);
		}
		//登录页面跳转
		if(userInfo==null){
			map.put("Message", "block");
			map.put("users", "");
			return "login";
		}
		return "redirect:../page/index.jsp";
	}

	//注销
	@RequestMapping(value="/loginOut")
	public String loginOut(@ModelAttribute("loginOut")ModelMap map,HttpSession session,HttpServletRequest request){
		String path=request.getParameter("url").substring(14);
		session.removeAttribute("users");
		map.put("loginOut", true);
		return "redirect:"+path;
	}


	@RequestMapping(value="/checkemail",method=RequestMethod.POST)
	public void checkEmail(String email,PrintWriter out){
		System.out.println(email);
		if(email!=null && userInfoService.getEmail(email)){
			out.print(1);
		}else{
			out.print(0);
		}


	}

	@RequestMapping(value="/checkuname",method=RequestMethod.POST)
	public void checkUname(String uname,PrintWriter out){
		if(uname!=null && userInfoService.getUname(uname)){
			out.print(1);
		}else{
			out.print(0);
		}
	}

	@RequestMapping("/sendMail")
	public void sendMail(ModelMap map,String email,PrintWriter out,Model model){
		System.out.println(email);
		//int yzm=(int)(Math.random()*1000000);
		int yzm=RandomNumUtil.getRandomNumber();//生成六位不重复随机数
		model.addAttribute("yzm", yzm);
		//map.put("yzm", yzm);
		activeAccountMail("好知网注册验证信息","您的验证码是："+yzm,"15886486481@163.com",email);
		out.print(yzm);
		out.flush();
		out.close();
	}

	//注册
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@ModelAttribute("user") UserInfo userInfo,ModelMap map){
		System.out.println("register ===>" +userInfo);
		userInfoService.register(userInfo);
		return "login";
	}



	@RequestMapping("/login01")
	public String login02(){
		System.out.print("YES");
		return "index";
	}

	/**
	 * 
	 * @param user
	 * @param userid
	 * @param gender
	 * @param usign
	 * @param introdution
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveInfo(UserInfo user,int userid,String gender,String usign,String introdution,ModelMap map,HttpServletRequest request,Model model){
		System.out.println("save进来了");
		String flag="";
		user.setUserid(userid);user.setGender(gender);user.setUsign(usign);user.setIntrodution(introdution);

		userInfoService.saveInfo(user);
		if(userInfoService.saveInfo(user)==1){
			flag = "1";
			user.setUname("lytest");
			model.addAttribute("users",user);
			//session.setAttribute("users",userinfo);
		}else{


		}
		return flag;
	}



	@Autowired
	private JavaMailSender mailSender;
	private void activeAccountMail(String subject, String content,String from, String to) {
		try {
			MimeMessage mm=mailSender.createMimeMessage();
			MimeMessageHelper mmh=new MimeMessageHelper(mm, true,"utf-8");
			mmh.setTo(to);//设置邮件接收者
			mmh.setFrom(from);
			mmh.setSubject(subject);//设置主题
			mmh.setText(content,true);//设置内容
			mailSender.send(mm);//发送邮件
		} catch (Exception e) {
			e.printStackTrace();
		}

	}


	@ResponseBody
	@RequestMapping("/findall")
	private Map<String, Object> findall(){
		List<UserInfo> users=userInfoService.findall();
		int count=userInfoService.count();
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("rows", users);
		result.put("total",count);
		return result;
	}

	@RequestMapping("/adduserinfo")
	private void adduserinfo(UserInfo userInfo,String uname,String upassword,String email,String gender,String photo,String usign,String introdution,PrintWriter out,HttpServletRequest request){
		BASE64Decoder decoder = new BASE64Decoder();  
		System.out.println(photo);
		photo = photo.replaceAll("data:image/png;base64,", "");  


		// Base64解码  
		byte[] b=null;
		try {
			b = decoder.decodeBuffer(photo);
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
		String photopath="../touxiangPic/"+filename;
		FileOutputStream fos;
		try {
			fos = new FileOutputStream("D:\\apache-tomcat-7.0.30\\webapps\\touxiangPic\\"+filename);
			fos.write(b);  
			fos.flush();  
			fos.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		} 

		userInfo.setUname(uname);
		userInfo.setUpassword(upassword);
		userInfo.setEmail(email);
		userInfo.setGender(gender);
		userInfo.setPhoto(filename);
		userInfo.setIntrodution(introdution);
		userInfo.setUsign(usign);
		int result=userInfoService.adduserinfo(userInfo);
		out.print(result);
		out.flush();
		out.close();
	}


	 public String editItemsSubmit( Model model,HttpServletRequest request,Integer userid,
			  MultipartFile items_pic,UserInfo user)throws Exception {
		
	      // 上传图片的原始名称
	      String originalFilename = items_pic.getOriginalFilename();
	      // 上传图片
	      if (items_pic!= null&&originalFilename!=null&&originalFilename.length()>0) {// 存储图片的物理路径
	        String pic_path = request.getServletContext().getRealPath("../img/headimg");
	        // 新的图片名称
	        String newFilename = new Date().getTime()+""+new Random().nextInt(100000)
	        		 +originalFilename.substring(originalFilename.lastIndexOf("."));
	        //新的图片
	        File newfile=new java.io.File(pic_path+newFilename);
	        //将内存的数据写入磁盘
	        items_pic.transferTo(newfile);	
	        user.setUserid(userid);user.setPhoto(newFilename);
	        userInfoService.editPhoto(user);
	   }
	      return "forward:/page/info.jsp";
	}

	@ResponseBody
	@RequestMapping(value="/selectTouxiang",method=RequestMethod.POST)
	public UserInfo register(Integer userid,ModelMap map){
		UserInfo user=userInfoService.getInfoByUserid(userid);
		return user;
	}

	@RequestMapping(value="/editpwd",method=RequestMethod.POST)
	public void editpwd(UserInfo userInfo,Integer userid,String curpwd,String newpwd,String conpwd, PrintWriter out){
		UserInfo user=userInfoService.getInfoByUserid(userid);
		System.out.println(user);
		if(!curpwd.equals( user.getUpassword()) ){
			out.print(1);
		}else if(!newpwd.equals(conpwd)){
			out.print(2);
		}else{
			userInfo.setUserid(userid);userInfo.setUpassword(newpwd);
			userInfoService.editPwd(userInfo);
			out.print(3);
		}
	}

	@RequestMapping("/updateuserinfo")
	private void updateuserinfo(UserInfo userInfo,int userid,String uname,String upassword,String email,String gender,String photo,String usign,String introdution,int status,PrintWriter out){
		BASE64Decoder decoder = new BASE64Decoder();  
		System.out.println(photo);
		String word="data";
		if(photo.contains(word)){
			photo = photo.replaceAll("data:image/png;base64,", "");  

			// Base64解码  
			byte[] b=null;
			try {
				b = decoder.decodeBuffer(photo);
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
			String photopath="../touxiangPic/"+filename;
			userInfo.setPhoto(filename);
			FileOutputStream fos;
			try {
				fos = new FileOutputStream("D:\\apache-tomcat-7.0.30\\webapps\\touxiangPic\\"+filename);
				fos.write(b);  
				fos.flush();  
				fos.close(); 
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else{
			String temp=photo;
			int temp01=temp.lastIndexOf("/")+1;
			String filename=temp.substring(temp01);
			String photopath="../touxiangPic/"+filename;
			userInfo.setPhoto(filename);
		}
		userInfo.setUserid(userid);
		userInfo.setUname(uname);
		userInfo.setUpassword(upassword);
		userInfo.setEmail(email);
		userInfo.setGender(gender);
		userInfo.setIntrodution(introdution);
		userInfo.setUsign(usign);
		userInfo.setStatus(status);
		System.out.println(userInfo);
		int result=userInfoService.updateuserinfo(userInfo);
		System.out.println(result);
		out.print(result);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/deluserinfo")
	public void deluserinfo(String userid,PrintWriter out){
		System.out.println(userid);
		String arr[] = userid.split(",");
		Integer[] intarr = new Integer[arr.length];
		for(int i=0;i<arr.length;i++){
			intarr[i] = Integer.parseInt(arr[i]);
		}
		int result=userInfoService.deluserinfo(intarr);
		out.print(result);
		out.flush();
		out.close();
	}
}

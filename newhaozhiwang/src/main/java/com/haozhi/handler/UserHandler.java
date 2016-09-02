package com.haozhi.handler;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.mail.internet.MimeMessage;
import javax.management.DescriptorRead;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.UserInfo;
import com.haozhi.service.UserInfoService;


import com.haozhi.util.UsuallyUtil;
import com.sun.mail.util.DecodingException;



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
	
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@ModelAttribute("users") UserInfo userInfo,ModelMap map){
		String name=userInfo.getUname();
		System.out.println("test");
		
		 name=new UsuallyUtil().decode(name);
	     System.out.println(name+"yes");
		if(userInfo!=null && name.contains("@")){
			userInfo=userInfoService.loginByEamil(userInfo);
			map.put("users", userInfo);
		}else if(userInfo!=null && !name.contains("@")){
			userInfo.setUname(name);
			userInfo.toString();
			userInfo=userInfoService.loginByUname(userInfo);
			map.put("users", userInfo);
		}
		//登录页面跳转
		if(userInfo==null){
			map.put("Message", "block");
			map.put("users", "");
			return "login";
		}
		return "index";
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
	public void sendMail(ModelMap map,String email,PrintWriter out){
		System.out.println(email);
		int yzm=(int)(Math.random()*1000000);
		map.put("yzm", yzm);
		activeAccountMail("好知网注册验证信息","您的验证码是："+yzm,"15886486481@163.com",email);
		out.print(yzm);
		out.flush();
		out.close();
	}
	
	//注册
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@ModelAttribute("user") UserInfo userInfo,ModelMap map){
		System.out.println("register ===>" +userInfo);
		System.out.println(userInfoService.getUname(userInfo.getUname()));
		System.out.println(userInfoService.getUname(userInfo.getEmail()));
		
		/*if(userInfoService.getUname(userInfo.getUname())==true || userInfoService.getEmail(userInfo.getEmail())==true){
			System.out.println("注册失败啦。。。");
			return "login";
		}
		
		if(map.get("yzm").equals(userInfo.getCode())){
			
		}*/
		if(userInfoService.register(userInfo)==true){
			return "login";
		}
		return "re";
		
		
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
	public String saveInfo(UserInfo user,int userid,String gender,String usign,String introdution,ModelMap map){
		System.out.println("save进来了");
		String flag="";
		user.setUserid(userid);user.setGender(gender);user.setUsign(usign);user.setIntrodution(introdution);
		
		userInfoService.saveInfo(user);
		if(userInfoService.saveInfo(user)==1){
			flag = "1";
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

	

}

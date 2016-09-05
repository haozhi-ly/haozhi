package com.haozhi.handler;

import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

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
	
	/*@ModelAttribute
	public void getModel(ModelMap map){
		map.put("users",new UserInfo());
	}*/
	//不要再用modelAttribute了要存入session直接用Model 
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(UserInfo userInfo,Model model,ModelMap map){
		
		String name=userInfo.getUname();
		
		 name=new UsuallyUtil().decode(name);
		if(userInfo!=null && name.contains("@")){
			userInfo=userInfoService.loginByEamil(userInfo);
			model.addAttribute("users", userInfo);
		}else if(userInfo!=null && !name.contains("@")){
			userInfo.setUname(name);
			userInfo.toString();
			userInfo=userInfoService.loginByUname(userInfo);
			model.addAttribute("users", userInfo);
		}
		//登录页面跳转
		if(userInfo==null){
			map.put("Message", "block");
			map.put("users", "");
			return "login";
		}
		return "redirect:../page/index.jsp";
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
	@RequestMapping(value="/savePhoto",method=RequestMethod.POST)
	public String savePhoto(){
		return null;
	}
	

}

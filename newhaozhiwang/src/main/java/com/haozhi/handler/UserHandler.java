package com.haozhi.handler;

import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.UserInfo;
import com.haozhi.service.UserInfoService;
import com.haozhi.util.SendEmailUtil;

@Controller
@RequestMapping("/userinfo")
@SessionAttributes(value={"users"})
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
		if(userInfo!=null && name.contains("@")){
			userInfo=userInfoService.loginByEamil(userInfo);
			map.put("users", userInfo);
		}else if(userInfo!=null && !name.contains("@")){
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
	public void sendMail(UserInfo userInfo){
		System.out.println("发送邮件啦....");
		int yzm=(int)(Math.random()*10000);
		//activeAccountMail("好知网注册验证信息","您的验证码是："+yzm,"13237340867@163.com",userInfo.getEmail());
		/*SendEmailUtil.activeAccountMail();*/
	}
	
	//注册
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@ModelAttribute("user") UserInfo userInfo,BindingResult bindingResult,ModelMap map,HttpServletRequest request){
		System.out.println("register ===>" +userInfo);
		System.out.println(userInfoService.getUname(userInfo.getUname()));
		System.out.println(userInfoService.getUname(userInfo.getEmail()));
		
		if(userInfoService.getUname(userInfo.getUname())==true || userInfoService.getEmail(userInfo.getEmail())==true){
			System.out.println("注册失败啦。。。");
			return "login";
		}
		SendEmailUtil.activeAccountMail();
		System.out.println("邮件发送啦");
		/*activeAccountMail("验证码来啦！！！","13237340867@163.com",userInfo.getEmail());*/
		//userInfoService.register(userInfo) ;
		return "register";
		
	}
	
	
	@RequestMapping("/login01")
	public String login02(){
		System.out.print("YES");
		return "index";
	}
	

	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveInfo(UserInfo user,int userid,String gender,String usign,String introdution,ModelMap map,HttpServletRequest request){
		System.out.println("save进来了");
		String flag="";
		HttpSession session=request.getSession();
		
		UserInfo userinfo=(UserInfo)session.getAttribute("users");
		user.setUserid(userid);user.setGender(gender);user.setUsign(usign);user.setIntrodution(introdution);
		
		System.out.println("dkgha"+user);
		userInfoService.saveInfo(user);
		if(userInfoService.saveInfo(user)==1){
			flag = "1";
			userinfo.setGender(gender);
		}
		return flag;
	}
	
	/*@Autowired
	private static JavaMailSender mailSender;
	public static void activeAccountMail() {
		UserInfo user=new UserInfo();
		int yzm=(int)(Math.random()*10000);
		try {
			MimeMessage mm=mailSender.createMimeMessage();
			MimeMessageHelper mmh=new MimeMessageHelper(mm, true,"utf-8");
			mmh.setTo(user.getEmail());//设置邮件接收者
			mmh.setFrom("13237340867@163.com");
			mmh.setSubject("好知网注册验证信息");//设置主题
			mmh.setText("您的验证码是："+yzm+"千万不要告诉别人哦！",true);//设置内容
			mailSender.send(mm);//发送邮件
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}*/
	
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

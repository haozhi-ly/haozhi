package com.haozhi.util;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.haozhi.entity.UserInfo;

public class SendEmailUtil {
	

	@Autowired
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
		
	}
}

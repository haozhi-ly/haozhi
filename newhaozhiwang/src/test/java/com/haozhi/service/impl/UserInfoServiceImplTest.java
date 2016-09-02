package com.haozhi.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haozhi.entity.UserInfo;
import com.haozhi.service.UserInfoService;

//指明使用spring的测试框架来进行单元测试
@RunWith(SpringJUnit4ClassRunner.class)
//使用的spring的配置文件
@ContextConfiguration("classpath:spring.xml")
public class UserInfoServiceImplTest extends UserInfoServiceImpl {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@Test
	public void testLogin() {
		UserInfo user=userInfoService.loginByEamil(new UserInfo("23456@qq.com","123456"));
		System.out.println(user);
		assertNotNull(user);
	}
	
	@Test
	public void testRegister() {
		boolean user=userInfoService.register(new UserInfo(6,"a","a","a","女",null,null,null,1,0,null,null,null));
		System.out.println(user);
		assertEquals(user, true);
	}
	
	@Test
	public void testGetuname() {
		boolean user=userInfoService.getUname("超超");
		boolean email=userInfoService.getEmail("23456@qq.com");
		System.out.println(user);
		System.out.println(email);
		assertNotNull(user);
		assertNotNull(email);
	}
	
	@Test
	public void testSave() {
		UserInfo user = new UserInfo();
		user.setUserid(2);user.setIntrodution("我太傻太傻了!!");
		int result = userInfoService.saveInfo(user);
		System.out.println(user);
		assertEquals(result, 1);
	}
	
	@Test
	public void testGetAll() {
		UserInfo user=userInfoService.getInfoByUserid(2);
		System.out.println(user);
		assertNotNull(user);
	}

}

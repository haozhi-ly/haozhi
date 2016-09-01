package com.haozhi.test;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.haozhi.entity.UserInfo;
import com.haozhi.mapper.UserInfoMapper;
import com.haozhi.util.MybatisUtil;



public class UserMapperTest{

	@Test
	public void testUserInfo() {
		SqlSession session =MybatisUtil.getSession();
		UserInfoMapper ftm=session.getMapper(UserInfoMapper.class);
		UserInfo userInfo=ftm.getUserByUname(new UserInfo("超超","123456"));
		
		System.out.println(userInfo);
		assertNotNull(userInfo);		
	}
	
	@Test
	public void testRegister() {
		SqlSession session =MybatisUtil.getSession();
		UserInfoMapper ftm=session.getMapper(UserInfoMapper.class);
		int userInfo=ftm.insertUser(new UserInfo(7,"a","a","a","女",null,null,null,1,0,null,null,null));
		
		System.out.println(userInfo);
		assertNotNull(userInfo);	
		
	}
	
	@Test
	public void testGetuname() {
		SqlSession session =MybatisUtil.getSession();
		UserInfoMapper ftm=session.getMapper(UserInfoMapper.class);
		String userInfo=ftm.getUname("超超");
		String userEmail=ftm.getEmail("23456@qq.com");
		System.out.println(userInfo);
		System.out.println(userEmail);
		assertNotNull(userInfo);
		assertNotNull(userEmail);
	}

}


package com.haozhi.mapper;

import com.haozhi.entity.UserInfo;

public interface UserInfoMapper {
	
	//通过用户名登录，获取用户名和密码
	UserInfo getUserByUname(UserInfo userInfo);
	
	//通过邮箱登录，获取用户名和密码
	UserInfo getUserByEmail(UserInfo userInfo);
	
	//注册用户
	int insertUser(UserInfo userInfo);
	
	//注册时判断是否有相同的用户名
	String getUname(String uname);
	
	//注册时判断是否有相同的邮箱
	String getEmail(String email);
}

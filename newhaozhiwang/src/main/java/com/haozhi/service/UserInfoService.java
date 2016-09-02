package com.haozhi.service;

import com.haozhi.entity.UserInfo;

public interface UserInfoService {

	UserInfo loginByUname(UserInfo userInfo);

	UserInfo loginByEamil(UserInfo userInfo);

	boolean register(UserInfo userInfo);

	boolean getUname(String uname);

	boolean getEmail(String email);
	
	//保存信息
	int saveInfo(UserInfo user);
	
	UserInfo getInfoByUserid(int userid);

}

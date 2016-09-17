package com.haozhi.service;

import java.util.List;

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
	
	//修改头像
	int editPhoto(UserInfo userInfo);
	
	//修改密码
    int editPwd(UserInfo userInfo);

	List<UserInfo> findall();

	int count();

	int adduserinfo(UserInfo userInfo);

	int updateuserinfo(UserInfo userInfo);

	int deluserinfo(Integer[] intarr);

	UserInfo getContactMsgbyUserid(int courseid);

}

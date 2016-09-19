
package com.haozhi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	
	//保存信息
	int saveInfo(UserInfo user);
	
	UserInfo getInfoByUserid(int userid);

	List<UserInfo> findall();

	int count();
	
	//换头像
	int editPhoto(UserInfo userInfo);
	
	//修改密码
	int editPwd(UserInfo userInfo);

	int adduserinfo(UserInfo userInfo);

	int updateuserinfo(UserInfo userInfo);

	int deluserinfo(Integer[] intarr);
	
	UserInfo getContactMsgbyUserid(@Param("userid")Integer userid,@Param("presentid")Integer presentid);
}

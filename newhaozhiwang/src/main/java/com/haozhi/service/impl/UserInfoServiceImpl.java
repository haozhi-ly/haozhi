package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.UserInfo;
import com.haozhi.mapper.UserInfoMapper;
import com.haozhi.service.UserInfoService;
import com.haozhi.util.Encrypt;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {
	
	@Autowired
	private UserInfoMapper userInfoMapper;
	
	@Override
	public UserInfo loginByUname(UserInfo userInfo) {
		//密码加密操作
		//userInfo.setUpassword(Encrypt.md5AndSha(userInfo.getUpassword()));
		return userInfoMapper.getUserByUname(userInfo);
	}

	@Override
	public UserInfo loginByEamil(UserInfo userInfo) {
		//密码加密操作
		//userInfo.setUpassword(Encrypt.md5AndSha(userInfo.getUpassword()));
		return userInfoMapper.getUserByEmail(userInfo);
	}

	@Override
	public boolean register(UserInfo userInfo) {
		try {
			//密码加密操作
			userInfo.setUpassword(Encrypt.md5AndSha(userInfo.getUpassword()));
			return userInfoMapper.insertUser(userInfo)>0;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean getUname(String uname){
		if(userInfoMapper.getUname(uname)==null){
			return false;
		}
		return true;
	}

	@Override
	public boolean getEmail(String email) {
		if(userInfoMapper.getEmail(email)==null){
			return false;
		}
		return true;
	}

	@Override
	public int saveInfo(UserInfo user) {
		return userInfoMapper.saveInfo(user);
	}

	@Override
	public UserInfo getInfoByUserid(int userid) {
		return userInfoMapper.getInfoByUserid(userid);
	}

	@Override
	public List<UserInfo> findall() {
		return userInfoMapper.findall();
	}

	@Override
	public int count() {
		return userInfoMapper.count();
	}
	@Override
	public int editPhoto(UserInfo userInfo) {
		return userInfoMapper.editPhoto(userInfo);
	}

	@Override
	public int editPwd(UserInfo userInfo) {
		return userInfoMapper.editPwd(userInfo);
	}

	@Override
	public int adduserinfo(UserInfo userInfo) {
		return userInfoMapper.adduserinfo(userInfo);
	}



}

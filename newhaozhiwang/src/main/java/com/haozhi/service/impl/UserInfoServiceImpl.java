package com.haozhi.service.impl;

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
	public boolean getUname(String uname) {
		if(uname==null && userInfoMapper.getUname(uname).equals("")){
			return false;
		}
		return true;
	}

	@Override
	public boolean getEmail(String email) {
		if(email==null && userInfoMapper.getEmail(email).equals("")){
			return false;
		}
		return true;
	}

}

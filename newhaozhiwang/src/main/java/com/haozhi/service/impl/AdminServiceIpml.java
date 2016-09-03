package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Admin;
import com.haozhi.mapper.AdminMapper;
import com.haozhi.service.AdminService;

@Service("adminService")
public class AdminServiceIpml implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public List<Admin> findAll() {
		return adminMapper.findAll();
	}

	@Override
	public int addadmin(Admin admin) {
		return adminMapper.addadmin(admin);
	}

	@Override
	public int count() {
		return adminMapper.count();
	}

	@Override
	public int deladmin(Integer...aid) {
		return adminMapper.deladmin(aid);
	}

}

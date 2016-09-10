package com.haozhi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.haozhi.entity.Admin;

@Service("adminService")
public interface AdminService {

	List<Admin> findAll();

	int addadmin(Admin admin);

	int count();

	int deladmin(Integer...intarr);

	Admin loginadmin(Admin admin);

	Admin findmyself(Admin admin);

	int updateadmin(Admin admin);

	int register(Admin admin);

}

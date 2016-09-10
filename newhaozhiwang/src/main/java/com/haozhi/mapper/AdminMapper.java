
package com.haozhi.mapper;

import java.util.List;

import com.haozhi.entity.Admin;

public interface AdminMapper {

	List<Admin> findAll();

	int addadmin(Admin admin);

	int count();

	int deladmin(Integer...aid);

	Admin loginadmin(Admin admin);

	Admin findmyself(Admin admin);

	int updateadmin(Admin admin);

	int register(Admin admin);

}

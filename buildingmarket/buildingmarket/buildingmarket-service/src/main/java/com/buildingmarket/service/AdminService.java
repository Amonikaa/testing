package com.buildingmarket.service;

import com.buildingmarket.model.Admin;

public interface AdminService {

	Admin findByAdminEmailAndAdminPassword(Admin admin);
	public Admin updateAdmin(String saveImages, Admin admin);
	Admin findByAdminId(int adminId);
	boolean getPassword(String password);
	boolean changePassword(Admin admin);
}

package com.buildingmarket.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.Admin;
import com.buildingmarket.repository.AdminRepository;
import com.buildingmarket.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepository;

	public Admin findByAdminEmailAndAdminPassword(Admin admin) {
		Admin oldAdmin = adminRepository.findByAdminEmailAndAdminPassword(admin.getAdminEmail(),
				admin.getAdminPassword());
		return oldAdmin;
	}

	public Admin updateAdmin(String saveImages, Admin admin) {
		Admin admin2 = new Admin();
		if (null != saveImages && !saveImages.isEmpty()) {
			admin.setAdminImage(saveImages);

		}
		admin2 = adminRepository.save(admin);
		return admin2;
	}

	public Admin findByAdminId(int adminId) {
		Admin admin = new Admin();
		admin = adminRepository.findOne(adminId);
		return admin;
	}

	public boolean getPassword(String password) {
		Admin admin = adminRepository.getPassword(password);
		if (admin != null) {

			return true;
		}
		return false;
	}

	public boolean changePassword(Admin admin) {
		int changePassword = adminRepository.changePassword(admin.getAdminPassword(),admin.getAdminId());
		if(changePassword!=0)
		{
			return true;
		}
		return false;
	}

}

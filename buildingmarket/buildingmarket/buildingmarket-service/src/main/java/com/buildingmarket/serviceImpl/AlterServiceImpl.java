package com.buildingmarket.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.Admin;
import com.buildingmarket.repository.AlterRepository;
import com.buildingmarket.service.AlterService;

@Service
public class AlterServiceImpl implements AlterService {
	@Autowired
	private AlterRepository alterRepository;


	public void alterTable(String e, String p, String n, String l) {
		Admin admin = new Admin();
		admin.setAdminEmail(e);
		admin.setAdminPassword(p);
		admin.setName(n);
		admin.setLastName(l);
		alterRepository.save(admin);

	}

}

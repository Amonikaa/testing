package com.buildingmarket.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.buildingmarket.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
	Admin findByAdminEmailAndAdminPassword(String adminEmail, String adminPassword);

	@Query("from Admin a where a.adminPassword=?1")
	Admin getPassword(String password);

	@Modifying
	@Transactional
	@Query("update Admin a set a.adminPassword=?1 where a.adminId=?2")
	int changePassword(String adminPassword, int adminId);

}

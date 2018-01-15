package com.buildingmarket.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.buildingmarket.model.Business;

public interface BusinessRepository extends JpaRepository<Business, Integer> {
	@Transactional
	@Query("from Business b where b.user.userId=?1")
	List<Business> findByUserId(int userId);

}

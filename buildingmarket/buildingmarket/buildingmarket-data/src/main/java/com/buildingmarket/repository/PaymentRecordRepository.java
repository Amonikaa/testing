package com.buildingmarket.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.buildingmarket.model.PaymentRecord;

public interface PaymentRecordRepository extends JpaRepository<PaymentRecord, Integer> {

	List<PaymentRecord> findBySellerId(int userId);

	

}

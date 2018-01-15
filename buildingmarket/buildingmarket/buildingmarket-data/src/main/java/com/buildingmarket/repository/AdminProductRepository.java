package com.buildingmarket.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.buildingmarket.model.AdminProduct;

public interface AdminProductRepository extends JpaRepository<AdminProduct, Integer> {

}

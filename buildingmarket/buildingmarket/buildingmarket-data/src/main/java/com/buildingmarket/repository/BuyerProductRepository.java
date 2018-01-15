package com.buildingmarket.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.buildingmarket.model.BuyerProduct;

public interface BuyerProductRepository  extends JpaRepository<BuyerProduct, Integer>{

}

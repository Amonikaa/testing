package com.buildingmarket.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.buildingmarket.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	List<Product> findByStatus(int status);

	@Modifying
	@Transactional
	@Query("update Product p set p.status=1 where p.productId=?1")
	int buyProduct(int productId);

	@Transactional
	@Query("from Product p where p.user.userId=?1 and p.status=?2")
	List<Product> getProduct(int userId, int status);

	Product findByProductId(int productId);

	@Transactional
	@Query("from Product p where p.user.userId=?1")
	List<Product> findSellerProductList(int userId);

}

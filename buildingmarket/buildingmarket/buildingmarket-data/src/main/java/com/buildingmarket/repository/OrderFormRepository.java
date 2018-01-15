package com.buildingmarket.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.buildingmarket.model.OrderForm;

public interface OrderFormRepository extends JpaRepository<OrderForm, Integer> {

	List<OrderForm> findByStatus(int status);
	@Modifying
	@Transactional
	@Query("update OrderForm o set o.status=2 where o.roderFormId=?1")
	int changeOrderStatus(int roderFormId);
	
	@Query("from OrderForm o where o.user.userId=?1 and o.status=?2")
	List<OrderForm> getOrderDetailByUserIdAndStatus(int userId, int status);

}

package com.buildingmarket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.OrderForm;
import com.buildingmarket.model.PaymentRecord;
import com.buildingmarket.model.Product;
import com.buildingmarket.repository.OrderFormRepository;
import com.buildingmarket.repository.PaymentRecordRepository;
import com.buildingmarket.repository.ProductRepository;
import com.buildingmarket.service.OrderFormService;

@Service
public class OrderFormServiceImpl implements OrderFormService {

	@Autowired
	private OrderFormRepository orderFormRepository;

	@Autowired
	private PaymentRecordRepository paymentRecordRepository;
	
	@Autowired
	private ProductRepository productRepository;

	public void saveOrderInformation(OrderForm orderForm) {
		orderFormRepository.save(orderForm);
	}

	public void savePaymentInformation(PaymentRecord paymentRecord) {
		paymentRecordRepository.save(paymentRecord);

	}

	public List<OrderForm> getOrderDetail() {
		int status = 1;
		List<OrderForm> listOrder = orderFormRepository.findByStatus(status);
		return listOrder;
	}

	public int changeOrderStatus(int orderFormId) {
		int changeStatus = orderFormRepository.changeOrderStatus(orderFormId);
		if (changeStatus > 0) {
			return changeStatus;
		}
		return 0;
	}

	public List<OrderForm> getDeliveryOrderDetail() {
		int status = 2;
		List<OrderForm> listOrder = orderFormRepository.findByStatus(status);
		return listOrder;

	}

	public List<PaymentRecord> getAllPaymentHistory(int userId) {
		// TODO Auto-generated method stub
		return paymentRecordRepository.findBySellerId(userId);
	}

	public List<PaymentRecord> getAllUserPaymentHistory() {
		// TODO Auto-generated method stub
		return paymentRecordRepository.findAll();
	}
	public List<OrderForm> getOrderDetail(int userId) {
		int status = 1;
		List<OrderForm> listOrder = orderFormRepository.getOrderDetailByUserIdAndStatus(userId,status);
		return listOrder;
	}

	public void findByProductId(int productId, Integer qty) {
		Product product = productRepository.findByProductId(productId);
		if(null!=product){
			String productQty= String.valueOf(qty) ;
			product.setProductQuantity(productQty);
			productRepository.save(product);
		}
		
		
	}

	public List<OrderForm> getDeliveryOrderDetail(int userId) {
		int status = 2;
		List<OrderForm> listOrder = orderFormRepository.getOrderDetailByUserIdAndStatus(userId,status);
		return listOrder;
	}


}

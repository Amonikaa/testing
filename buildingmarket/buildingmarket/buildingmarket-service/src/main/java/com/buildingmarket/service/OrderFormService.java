package com.buildingmarket.service;

import java.util.List;

import com.buildingmarket.model.OrderForm;
import com.buildingmarket.model.PaymentRecord;

public interface OrderFormService {

	public void savePaymentInformation(PaymentRecord paymentRecord);

	public void saveOrderInformation(OrderForm orderForm);

	public List<OrderForm> getOrderDetail();

	public int changeOrderStatus(int orderFormId);

	public List<OrderForm> getDeliveryOrderDetail();

	public List<PaymentRecord> getAllPaymentHistory(int userId);

	public List<PaymentRecord> getAllUserPaymentHistory();

	public List<OrderForm> getOrderDetail(int userId);

	public void findByProductId(int productId, Integer qty);

	public List<OrderForm> getDeliveryOrderDetail(int userId);

}

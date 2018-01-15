package com.buildingmarket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.OrderForm;
import com.buildingmarket.service.OrderFormService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantURL;

@Controller
public class AdminOrderController {
	@Autowired
	private OrderFormService orderFormService;

	@RequestMapping(value = ConstantAction.ADMIN_GET_ORDER_DETAIL_ACTION, method = RequestMethod.GET)
	public String getOrderDetail(Model model) {
		List<OrderForm> orderList = orderFormService.getOrderDetail();
		if (orderList != null) {
			model.addAttribute("orderList", orderList);
			return ConstantURL.ADMIN_ORDER_DETAIL_FORM_URL;
		}
		return ConstantURL.ADMIN_ORDER_DETAIL_FORM_URL;

	}
	
	@RequestMapping(value = ConstantAction.ADMIN_GET_DELIVERY_ORDER_DETAIL_ACTION, method = RequestMethod.GET)
	public String getDeliveryOrderDetail(Model model) {
		List<OrderForm> orderList = orderFormService.getDeliveryOrderDetail();
		if (orderList != null) {
			model.addAttribute("orderList", orderList);
			return ConstantURL.ADMIN_DELIVERY_ORDER_DETAIL_FORM_URL;
		}
		return ConstantURL.ADMIN_DELIVERY_ORDER_DETAIL_FORM_URL;

	}


	@RequestMapping(value = ConstantAction.ADMIN_CHANGE_ORDER_STATUS_ACTION, method = RequestMethod.GET)
	public String changeOrderStatus(Model model, int orderFormId) {

		int changeStatus = orderFormService.changeOrderStatus(orderFormId);
		if(changeStatus>0)
		{
			return "redirect:" + ConstantAction.ADMIN_GET_ORDER_DETAIL_ACTION;
		}

		return ConstantURL.ADMIN_ORDER_DETAIL_FORM_URL;

	}

}

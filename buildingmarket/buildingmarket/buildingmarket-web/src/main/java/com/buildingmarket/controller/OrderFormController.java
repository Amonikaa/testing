package com.buildingmarket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.buildingmarket.model.OrderForm;
import com.buildingmarket.model.PaymentRecord;
import com.buildingmarket.model.Product;
import com.buildingmarket.model.User;
import com.buildingmarket.service.OrderFormService;
import com.buildingmarket.service.ProductService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;
import com.stripe.Stripe;
import com.stripe.exception.APIConnectionException;
import com.stripe.exception.APIException;
import com.stripe.exception.AuthenticationException;
import com.stripe.exception.CardException;
import com.stripe.exception.InvalidRequestException;
import com.stripe.model.Charge;

@Controller
public class OrderFormController {
	
	@Autowired
	private OrderFormService orderFormService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = ConstantAction.SHOW_ORDER_FORM, method = { RequestMethod.GET, RequestMethod.POST })
	public String showOrderForm(@ModelAttribute("OrderForm") OrderForm orderForm, Model model,String successMessage,  
			@RequestParam(required = false)Integer ProductId) {
		Product product = productService.getProductById(ProductId);
		model.addAttribute("price", product.getProductPrice());
		model.addAttribute("type", product.getProductType());
		model.addAttribute("product", product.getProductName());
		model.addAttribute("userId", product.getUser().getUserId());
		model.addAttribute("ProductId", product.getProductId());
		model.addAttribute("productQuantity", product.getProductQuantity());
		model.addAttribute("successMessage", successMessage);
		return ConstantURL.SHOW_ORDER_FORM;
	}

	@RequestMapping(value = ConstantAction.SAVE_ORDER_INFORMATION, method = { RequestMethod.GET, RequestMethod.POST })
	public String saveOrderInformation(@ModelAttribute("OrderForm") OrderForm orderForm, Model model,
			HttpServletRequest request) {
		/*HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		orderForm.setUser(user);
		orderFormService.saveOrderInformation(orderForm);*/
		return "redirect:" + ConstantAction.PAYMENT;
	}
	
	@RequestMapping(value = ConstantAction.PAYMENT, method = {RequestMethod.GET,RequestMethod.POST})
	public String payment(@ModelAttribute("OrderForm") OrderForm orderForm,Map<String, Object> map,HttpServletRequest request,Model model) {
		model.addAttribute("amount", orderForm.getAmount());
		map.put("OrderForm", orderForm);
		return ConstantURL.SHOW_PAYMENT;
	}
	
	@RequestMapping(value = ConstantAction.SAVE_PAYMENT, method = {RequestMethod.GET,RequestMethod.POST})
	public String savePayment(@ModelAttribute("OrderForm") OrderForm orderForm,HttpServletRequest request,Model model) throws AuthenticationException, InvalidRequestException, APIConnectionException, APIException, JSONException {
		 HttpSession session = request.getSession(false);
		User user =  (User) session.getAttribute(IConstant.USER_SESSION);
		PaymentRecord paymentRecord = new PaymentRecord();
		Product product = new Product();
		Stripe.apiKey = "sk_test_7OhJXC5oJnx0nrkS2RId8XgS";
		String token = request.getParameter("stripeToken");
		
	/*	String amount = request.getParameter("amount");
		Integer amt = Integer.parseInt(amount);
		int dollars = Math.round((int)amt/100);
		System.out.println("+++dollars++++"+dollars);
		System.out.println("+++amt++++"+amt);*/
		Integer productQty= Integer.valueOf(orderForm.getProductQuantity()) ;
		Integer quantity= Integer.valueOf(orderForm.getQuantity()) ;
		/*Integer productQuantity = Integer.parseInt(orderForm.getProductQuantity());
		Integer quantity = Integer.parseInt(orderForm.getQuantity());*/
		Integer qty= productQty-quantity;
	
		try {
		  Map<String, Object> chargeParams = new HashMap<String, Object>();
		  chargeParams.put("amount", orderForm.getAmount()); // Amount in cents
		  chargeParams.put("currency", "USD");
		  chargeParams.put("source", token);
		  chargeParams.put("description", "Example charge");
		  Charge charge = Charge.create(chargeParams);
		  JSONObject jsonObj = new JSONObject(charge.getSource());
		  paymentRecord.setEmail(jsonObj.getString("name"));
		  Double ActualAmt = Double.valueOf(charge.getAmount());
		  paymentRecord.setAmount(ActualAmt/100);
		  paymentRecord.setCurrency(charge.getCurrency());
		  paymentRecord.setSellerId(orderForm.getSellerId());
		  orderFormService.findByProductId(orderForm.getProductId(),qty);
		  product.setProductId(orderForm.getProductId());
		  paymentRecord.setProduct(product);
		  paymentRecord.setUser(user);
		  orderFormService.savePaymentInformation(paymentRecord);
		  orderForm.setUser(user);
		  orderForm.setStatus(IConstant.INT_ONE);
		  orderFormService.saveOrderInformation(orderForm);
		} catch (CardException  e) {
		 
		}
		model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.PAYMENT_SUCCESS_MESSAGE);
		return "redirect:" +  ConstantAction.MANAGE_PRODUCT_FORM_ACTION;
	}
	
	@RequestMapping(value = ConstantAction.PAYMENT_HISTORY, method = {RequestMethod.GET,RequestMethod.POST})
	public String paymentHistory(HttpServletRequest request,Model model) {
		 HttpSession session = request.getSession(false);
		User user =  (User) session.getAttribute(IConstant.USER_SESSION);
		List<PaymentRecord> paymentList = orderFormService.getAllPaymentHistory(user.getUserId());
		model.addAttribute("paymentHistoryList", paymentList);
		return ConstantURL.SHOW_PAYMENT_HISTORY;
	}
	
	@RequestMapping(value = ConstantAction.GET_USER_ORDER_ACTION, method = RequestMethod.GET)
	public String getOrderDetail(Model model,int userId) {
		List<OrderForm> orderList = orderFormService.getOrderDetail(userId);
		if (orderList != null) {
			model.addAttribute("orderList", orderList);
			return ConstantURL.USER_ORDER_LIST_FORM_URL;
		}
		return ConstantURL.USER_ORDER_LIST_FORM_URL;

	}
	
	
	@RequestMapping(value = ConstantAction.GET_USER_DELIVERY_ORDER_ACTION, method = RequestMethod.GET)
	public String getDeliveryOrderDetail(Model model,int userId) {
		List<OrderForm> orderList = orderFormService.getDeliveryOrderDetail(userId);
		if (orderList != null) {
			model.addAttribute("orderList", orderList);
			return ConstantURL.USER_ORDER_DELIVERY_LIST_FORM_URL;
		}
		return ConstantURL.USER_ORDER_DELIVERY_LIST_FORM_URL;

	}
	
}

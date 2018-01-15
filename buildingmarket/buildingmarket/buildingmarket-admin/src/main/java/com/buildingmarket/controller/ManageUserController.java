package com.buildingmarket.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.PaymentRecord;
import com.buildingmarket.model.User;
import com.buildingmarket.service.OrderFormService;
import com.buildingmarket.service.UserService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;

@Controller
public class ManageUserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private OrderFormService orderFormService;

	/**
	 * @author Amit, Manage User Page .
	 */
	@RequestMapping(value = ConstantAction.ADMIN_MANAGE_USER_FORM_ACTION, method = RequestMethod.GET)
	public String manageProduct(Map<String, Object> map, Model model) {

		List<User> oldUserList = userService.findAll();
		if (oldUserList != null) {
			model.addAttribute("oldUserList", oldUserList);
			return ConstantURL.ADMIN_MANAGE_USER_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_USER_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADMIN_UPDATE_USER_FORM_ACTION, method = RequestMethod.GET)
	public String updateProductForm(@ModelAttribute("user") User user, Model model, int userId) {

		user = userService.getUser(userId);

		if (user != null) {

			model.addAttribute("user", user);
		}

		return ConstantURL.ADMIN_UPDATE_USER_FORM_URL;

	}

	@RequestMapping(value = ConstantAction.ADMIN_USER_UPDATE_ACTION, method = RequestMethod.POST)
	public String updateProductDetails(@ModelAttribute("user") User user, Model model) {

		User updatedUser = userService.updateUserDetails(user);

		if (updatedUser != null) {

			return "redirect:" + ConstantAction.ADMIN_MANAGE_USER_FORM_ACTION;
		}
		return ConstantURL.ADMIN_UPDATE_USER_FORM_URL;

	}
	
	@RequestMapping(value = ConstantAction.ALL_PAYMENT_HISTORY, method = {RequestMethod.GET,RequestMethod.POST})
	public String paymentHistory(HttpServletRequest request,Model model) {
		List<PaymentRecord> allPaymentList = orderFormService.getAllUserPaymentHistory();
		model.addAttribute("paymentHistoryList", allPaymentList);
		return ConstantURL.All_PAYMENT_HISTORY;
	}

}

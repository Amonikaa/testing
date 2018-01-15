package com.buildingmarket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.Business;
import com.buildingmarket.model.BuyerProduct;
import com.buildingmarket.model.Product;
import com.buildingmarket.service.BusinessService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantURL;

@Controller
public class AdminBusinessController {
	@Autowired
	private BusinessService businessService;

	@RequestMapping(value = ConstantAction.ADMIN_MANAGE_BUSINESS, method = RequestMethod.GET)
	public String getAllBusiness(Model model) {
		List<Business> list = businessService.getAllBusiness();
		if (list != null) {
			model.addAttribute("businessList", list);
			return ConstantURL.ADMIN_BUSINESS_FORM_URL;
		}
		return ConstantURL.ADMIN_BUSINESS_FORM_URL;

	}
	
	@RequestMapping(value = ConstantAction.DELETE_BUSINESS_ACTION, method = RequestMethod.GET)
	public String deleteBlogs(Model model, HttpServletRequest request, int busniessId) {

		boolean deleteBusiness = businessService.deleteBusiness(busniessId);
		if (deleteBusiness) {

			return "redirect:" + ConstantAction.ADMIN_MANAGE_BUSINESS;
		}
		return ConstantURL.ADMIN_BUSINESS_FORM_URL;
	}
	
	@RequestMapping(value = ConstantAction.ADMIN_UPDATE_BUSINESS_FORM_ACTION, method = RequestMethod.GET)
	public String updateBusinessForm(@ModelAttribute("business") Business business, Model model, int busniessId) {

		business = businessService.updateBusiness(busniessId);

		if (business != null) {

			model.addAttribute("business", business);
		}

		return ConstantURL.ADMIN_UPDATE_BUSINESS_FORM_URL;

	}
	@RequestMapping(value = ConstantAction.ADMIN_BUSINESS_UPDATE_ACTION, method = RequestMethod.POST)
	public String updateBuyerProductDetails(@ModelAttribute("business") Business business, Model model) {

		business = businessService.updateBusinessDetails(business);

		if (business != null) {

			return "redirect:" + ConstantAction.ADMIN_MANAGE_BUSINESS;
		}
		return ConstantURL.ADMIN_UPDATE_BUSINESS_FORM_URL;

	}
	
	
}

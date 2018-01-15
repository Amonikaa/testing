package com.buildingmarket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.Business;
import com.buildingmarket.model.User;
import com.buildingmarket.service.BusinessService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;

@Controller
public class BusinessController {
	@Autowired
	private BusinessService businessService;

	/**
	 * @author Amit, Open User Business Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_BUSINESS_FORM_ACTION, method = RequestMethod.GET)
	public String userBusinessForm(Model model,String successMessage) {
		model.addAttribute("business", new Business());
		model.addAttribute("successMessage", successMessage);
		
		return ConstantURL.USER_BUSINESS_FORM_URL;
	}

	/**
	 * @author Amit, Save User Business Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_SAVE_BUSINESS_ACTION, method = RequestMethod.POST)
	public String saveBussiness(@ModelAttribute("business") @Valid Business business, BindingResult result, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		business.setUser(user);
		if (result.hasErrors()) {
			return ConstantURL.USER_BUSINESS_FORM_URL;
		} else {
			boolean oldBusiness = businessService.save(business);
			if (oldBusiness) {
				model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.BUSINESS_MESSAGE);
				return "redirect:" + ConstantAction.USER_BUSINESS_FORM_ACTION;
			}
		}
		return ConstantURL.USER_BUSINESS_FORM_URL;

	}

	/**
	 * @author Amit, Manage User Business Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_MANAGE_BUSINESS_ACTION, method = RequestMethod.GET)
	public String manageBussiness(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		List<Business> businesseList = businessService.getBusinessList(user.getUserId());
		model.addAttribute("businessesList", businesseList);
		return ConstantURL.USER_MANAGE_BUSINESS_FORM_URL;

	}

	/**
	 * @author Amit, Update User Business Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_UPDATE_BUSINESS_ACTION, method = RequestMethod.GET)
	public String updateBussiness(Model model, HttpServletRequest request) {
		int business = Integer
				.parseInt(request.getParameter("busniessId") == null ? "0" : request.getParameter("busniessId"));
		Business businesse = businessService.findById(business);
		model.addAttribute("business", businesse);
		return ConstantURL.USER_BUSINESS_FORM_URL;

	}

	/**
	 * @author Amit, Delete User Business Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_DELETE_BUSINESS_ACTION, method = RequestMethod.GET)
	public String deleteBussiness(Model model, HttpServletRequest request) {
		int business = Integer
				.parseInt(request.getParameter("busniessId") == null ? "0" : request.getParameter("busniessId"));
		boolean businesse = businessService.deleteBusiness(business);
		if (businesse) {
			return "redirect:" + ConstantAction.USER_MANAGE_BUSINESS_ACTION;
		}

		return "redirect:" + ConstantAction.USER_MANAGE_BUSINESS_ACTION;

	}

}

package com.buildingmarket.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.ContactSupport;
import com.buildingmarket.model.Product;
import com.buildingmarket.service.ContactSupportService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantURL;

@Controller
public class AdminSupportController {
	@Autowired
	private ContactSupportService contactSupportService;
	
	/**
	 * @author Amit, Open Support Page .
	 */
	@RequestMapping(value = ConstantAction.MANAGE_USER_SUPPORT_FORM_ACTION, method = RequestMethod.GET)
	public String manageProduct(Map<String, Object> map, Model model) {

		List<ContactSupport> oldList = contactSupportService.findAll();
		if (oldList != null) {
			model.addAttribute("oldList", oldList);
			return ConstantURL.ADMIN_MANAGE_USER_SUPPORT_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_USER_SUPPORT_FORM_URL;
	}
	
	@RequestMapping(value = ConstantAction.DELETE_SUPPORT_ACTION, method = RequestMethod.GET)
	public String deleteBlogs(Model model, HttpServletRequest request, int contactsupportId) {

		boolean deleteSupport = contactSupportService.deleteSupport(contactsupportId);
		if (deleteSupport) {

			return "redirect:" + ConstantAction.MANAGE_USER_SUPPORT_FORM_ACTION;
		}
		return ConstantURL.ADMIN_MANAGE_USER_SUPPORT_FORM_URL;
	}


}

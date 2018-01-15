package com.buildingmarket.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.Contact;
import com.buildingmarket.model.ContactSupport;
import com.buildingmarket.service.ContactService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantURL;

@Controller
public class AdminContactController {
	@Autowired
	private ContactService contactService;
	/**
	 * @author Amit, Open Contact Page .
	 */
	@RequestMapping(value = ConstantAction.MANAGE_USER_CONTACT_FORM_ACTION, method = RequestMethod.GET)
	public String manageProduct(Map<String, Object> map, Model model) {

		List<Contact> oldList = contactService.findAll();
		if (oldList != null) {
			model.addAttribute("oldList", oldList);
			return ConstantURL.ADMIN_MANAGE_USER_CONTACT_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_USER_CONTACT_FORM_URL;
	}
	
	@RequestMapping(value = ConstantAction.DELETE_CONTACT_ACTION, method = RequestMethod.GET)
	public String deleteBlogs(Model model, HttpServletRequest request, int contactId) {

		boolean deleteContact = contactService.deleteContact(contactId);
		if (deleteContact) {

			return "redirect:" + ConstantAction.MANAGE_USER_CONTACT_FORM_ACTION;
		}
		return ConstantURL.ADMIN_MANAGE_USER_CONTACT_FORM_URL;
	}

}

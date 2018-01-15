package com.buildingmarket.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.Contact;
import com.buildingmarket.service.ContactService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactService;

	/**
	 * @author Amit, Open User Contact Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_CONTACT_FORM_ACTION, method = RequestMethod.GET)
	public String userRegistrationForm(Model model,String successMessage) {
		model.addAttribute("successMessage",successMessage);
		model.addAttribute("contact", new Contact());
		return ConstantURL.USER_CONTACT_FORM_URL;
	}

	/**
	 * @author Amit, Save User Contact Detail Method.
	 */
	@RequestMapping(value = ConstantAction.SAVE_CONTACT_DETAIL_ACTION, method = RequestMethod.POST)
	public String saveContactDetail(@ModelAttribute("contact") @Valid Contact contact,BindingResult result, Model model) {
		if (result.hasErrors()) {
			return ConstantURL.USER_CONTACT_FORM_URL;
		}
		boolean oldContact = contactService.saveContactDetail(contact);
		if (oldContact) {
			model.addAttribute("successMessage",
					ConstantMessage.CONTACT_SUCCESS_MESSAGE);
		}
		return "redirect:" + ConstantAction.USER_CONTACT_FORM_ACTION;
		
		
		
	}

}

package com.buildingmarket.controller;

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

import com.buildingmarket.model.ContactSupport;
import com.buildingmarket.model.User;
import com.buildingmarket.service.ContactSupportService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;

@Controller
public class ContactSupportController {
	@Autowired
	private ContactSupportService contactSupportService;

	/**
	 * @author Amit, Open User Support Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_SUPPORT_FORM_ACTION, method = RequestMethod.GET)
	public String userSupportForm(Model model,String successMessage) {
		model.addAttribute("contactSupport", new ContactSupport());
		model.addAttribute("successMessage", successMessage);
		return ConstantURL.USER_SUPPORT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.USER_SAVE_SUPPORT_ACTION, method = RequestMethod.POST)
	public String saveBussiness(@ModelAttribute("contactSupport") @Valid ContactSupport contactSupport,
			BindingResult result, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		contactSupport.setUser(user);
		if (result.hasErrors()) {
			return ConstantURL.USER_SUPPORT_FORM_URL;
		} else {
			boolean oldSupport = contactSupportService.save(contactSupport);
			if (oldSupport) {
				model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.CONTACT_SUPPORT_MESSAGE);
				return "redirect:" + ConstantAction.USER_SUPPORT_FORM_ACTION;
			}
		}
		return ConstantURL.USER_SUPPORT_FORM_URL;

	}
}

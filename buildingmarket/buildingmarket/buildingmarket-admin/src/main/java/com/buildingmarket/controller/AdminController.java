package com.buildingmarket.controller;

import static com.buildingmarket.util.ConstantAction.ADMIN_INDEX_ACTION;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.buildingmarket.model.Admin;
import com.buildingmarket.service.AdminService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;
import com.buildingmarket.util.ImageUtil;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	/**
	 * @author Amit, Open Change password Page .
	 */
	@RequestMapping(value = ConstantAction.ADMIN_CHANGEPASSWORD_ACTION, method = RequestMethod.GET)
	public String adminChangePasswordForm(Model model) {
		model.addAttribute("admin", new Admin());
		return ConstantURL.ADMIN_CHANGEPASSWORD_FORM_URL;
	}

	/**
	 * @author Amit, Get password Page .
	 */
	@ResponseBody
	@RequestMapping(value = ConstantAction.ADMIN_GETPASSWORD_ACTION, method = RequestMethod.GET)
	public String getPassword(HttpServletRequest request) {
		String password = request.getParameter("oldPassword") == null ? ""
				: request.getParameter("oldPassword");
		boolean oldPassword = adminService.getPassword(password);
		if (oldPassword) {
			return IConstant.AJAX_PASSWORD_SUCCESS_MESSAGE;
		}
		return IConstant.AJAX_PASSWORD_ERROR_MESSAGE;
	}
	
	
	
	@RequestMapping(value = ConstantAction.CHANGEPASSWORD_ACTION, method = RequestMethod.POST)
	public String changePassword(@ModelAttribute("admin") Admin admin, Model model) {
		boolean changePassword = adminService.changePassword(admin);
		if (changePassword) {
			return "redirect:" + ConstantAction.ADMIN_HOME_ACTION;
		}
		return "redirect:" + ConstantAction.ADMIN_CHANGEPASSWORD_ACTION;
	}

	/**
	 * @author Amit, Open Login Page .
	 */
	@RequestMapping(value = ADMIN_INDEX_ACTION, method = RequestMethod.GET)
	public String adminWelcome(Model model) {
		model.addAttribute("admin", new Admin());
		return ConstantURL.ADMIN_LOGIN_FORM_URL;
	}

	/**
	 * @author Amit, Open Admin Profile Page .
	 */
	@RequestMapping(value = ConstantAction.ADMIN_PROFILE_ACTION, method = RequestMethod.GET)
	public String profile(Model model, HttpServletRequest request,Admin oldAdmin) {
		int adminId = Integer.parseInt(request.getParameter("adminId"));
		oldAdmin = adminService.findByAdminId(adminId);
		model.addAttribute("admin", oldAdmin);
		return ConstantURL.ADMIN_PROFILE_FORM_URL;
	}

	/**
	 * @author Amit, Open Admin Home Page .
	 * @throws IOException
	 */
	@RequestMapping(value = ConstantAction.ADMIN_HOME_ACTION, method = RequestMethod.GET)
	public String adminHome(Model model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession(false);
		Admin admin = (Admin) session.getAttribute(IConstant.ADMIN_SESSION);
		ImageUtil imageUtil = new ImageUtil();
		String base64Image = imageUtil.getImageFromAws(admin.getAdminId());
		session.setAttribute("base64Image", base64Image);
		model.addAttribute("admin", new Admin());
		return ConstantURL.ADMIN_HOME_FORM_URL;
	}

	/**
	 * @author Amit, Open Login Action .
	 */
	@RequestMapping(value = ConstantAction.ADMIN_LOGIN_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String adminLogin(@ModelAttribute("admin") Admin admin, HttpServletRequest request, Model model) {
		if (admin.getAdminEmail() == null) {
			return ConstantURL.ADMIN_LOGIN_FORM_URL;
		}
		HttpSession session = request.getSession();
		Admin oldAdmin = adminService.findByAdminEmailAndAdminPassword(admin);
		if (oldAdmin != null) {
			session.setAttribute(IConstant.ADMIN_SESSION, oldAdmin);
			return "redirect:" + ConstantAction.ADMIN_HOME_ACTION;
		}
		model.addAttribute(IConstant.USER_ERROR_MESSAGE, ConstantMessage.INVALID_USERNAME_AND_PASSWORD_MESSAGE);

		return ConstantURL.ADMIN_LOGIN_FORM_URL;
	}

	/**
	 * @author Amit, Add Admin Logout Method .
	 */
	@RequestMapping(value = ConstantAction.ADMIN_LOGOUT_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String adminLogout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.removeAttribute(IConstant.ADMIN_SESSION);
		}
		return "redirect:" + ConstantAction.ADMIN_INDEX_ACTION;
	}

	@RequestMapping(value = ConstantAction.ADMIN_UPDATE_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String updateAdmin(HttpServletRequest request, @RequestParam("file") MultipartFile files,
			@ModelAttribute("admin") Admin admin, Model model) {

		admin = adminService.updateAdmin(ImageUtil.saveImages(files, admin.getAdminId()), admin);
		if (admin != null) {
			return "redirect:" + ConstantAction.ADMIN_HOME_ACTION;
		}
		return ConstantURL.ADMIN_HOME_FORM_URL;
	}

}

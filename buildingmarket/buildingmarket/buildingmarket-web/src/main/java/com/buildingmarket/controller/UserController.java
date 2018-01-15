package com.buildingmarket.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.buildingmarket.model.Product;
import com.buildingmarket.model.User;
import com.buildingmarket.service.ProductService;
import com.buildingmarket.service.UserService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;
import com.buildingmarket.util.ImageUtil;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;

	/**
	 * @author Amit, Open Index Page .
	 */
	@RequestMapping(value = ConstantAction.INDEX_ACTION, method = RequestMethod.GET)
	public String welcome(Model model) {
		int status = 0;
		List<Product> oldList = productService.findAllSeller(status);
		if (oldList != null) {
			model.addAttribute("productList", oldList);
			return ConstantURL.INDEX_URL;
		}
		return ConstantURL.INDEX_URL;
	}

	/**
	 * @author Amit, Open Index Page .
	 */
	@RequestMapping(value = ConstantAction.Home_ACTION, method = RequestMethod.GET)
	public String index(Model model) {
		int status = 0;
		List<Product> oldList = productService.findAllSeller(status);
		if (oldList != null) {
			model.addAttribute("productList", oldList);
			return ConstantURL.INDEX_URL;
		}
		return ConstantURL.INDEX_URL;

	}

	/**
	 * @author Amit, Open Change Password page Page .
	 */
	@RequestMapping(value = ConstantAction.CHANGE_PASSWORD_FORM_ACTION, method = RequestMethod.GET)
	public String changePasswordForm(Model model, String successMessage) {
		model.addAttribute("user", new User());
		model.addAttribute("successMessage", successMessage);
		return ConstantURL.CHANGE_PASSWORD_URL;
	}

	/**
	 * @author Amit, Get password Page .
	 */
	@ResponseBody
	@RequestMapping(value = ConstantAction.USER_GETPASSWORD_ACTION, method = RequestMethod.GET)
	public String getPassword(HttpServletRequest request) {
		String password = request.getParameter("oldPassword") == null ? "" : request.getParameter("oldPassword");
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		boolean oldPassword = userService.getPassword(password, user.getUserId());
		if (oldPassword) {
			return IConstant.AJAX_PASSWORD_SUCCESS_MESSAGE;
		}
		return IConstant.AJAX_PASSWORD_ERROR_MESSAGE;
	}

	@RequestMapping(value = ConstantAction.CHANGEPASSWORD_ACTION, method = RequestMethod.POST)
	public String changePassword(@ModelAttribute("user") User user, Model model) {
		boolean changePassword = userService.changePassword(user);
		if (changePassword) {
			model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.CHANGE_PASSWORD_SUCCESS_MESSAGE);
			return "redirect:" + ConstantAction.CHANGE_PASSWORD_FORM_ACTION;
		}
		return "redirect:" + ConstantAction.CHANGE_PASSWORD_FORM_ACTION;
	}

	/**
	 * @author Amit, Open Home Page .
	 * @throws IOException
	 */
	@RequestMapping(value = ConstantAction.HOME_ACTION, method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request, String successMessage) throws IOException {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		User getUserById = userService.getUser(user.getUserId());
		if (getUserById.getUserImage() != null) {
			ImageUtil imageUtil = new ImageUtil();
			String base64Image = imageUtil.getUserImageFromAws(user.getUserId());
			if (base64Image != null) {
				session.setAttribute("base64Image", base64Image);
				model.addAttribute("successMessage", successMessage);
				return ConstantURL.USER_HOME_URL;
			}
		}
		model.addAttribute("successMessage", successMessage);
		return ConstantURL.USER_HOME_URL;
	}

	/**
	 * @author Amit, Add User Method .
	 */
	@RequestMapping(value = ConstantAction.ADD_USER_FORM_ACTION, method = RequestMethod.POST)
	public String addUser(/* @RequestParam("file") MultipartFile files, */ @ModelAttribute("user") @Valid User user,
			BindingResult result, Model model) {
		/*
		 * if (result.hasErrors()) { return
		 * ConstantURL.USER_REGISTRATION_FORM_URL; } else {
		 */
		User newUser = userService.addUser(user);
		if (newUser != null) {
			/*
			 * ImageUtil imageUtil = new ImageUtil();
			 * imageUtil.saveUserImages(files, newUser.getUserId());
			 */
			model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.USER_SUCCESS_MESSAGE);
			return ConstantURL.USER_LOGIN_FORM_URL;
		}
		/* } */
		return ConstantURL.INDEX_URL;
	}

	/**
	 * @author Amit, Verify User .
	 */

	@RequestMapping(value = ConstantAction.VERIFY_USER_REGISTRATION_ACTION, method = RequestMethod.GET)
	public String verifyTouristRegistration(Model model, int userId) {
		if (userId != 0) {
			boolean verifyUser = userService.verifyUserRegistration(userId);
			if (verifyUser) {
				model.addAttribute("verifiedMessage", IConstant.USER_VERIFIED_MESSAGE);
				return "redirect:" + ConstantAction.USER_LOGIN_ACTION;
			}
		}
		return "redirect:" + ConstantAction.USER_REGISTRATION_FORM_ACTION;
	}

	@RequestMapping(value = ConstantURL.USER_UPDATE_PROFILE_URL, method = { RequestMethod.GET, RequestMethod.POST })
	public String updateUserProfile(@RequestParam("file") MultipartFile files, @ModelAttribute("user") User user,
			Model model) {

		user = userService.updateUserProfile(ImageUtil.saveUserImages(files, user.getUserId()), user);

		if (user != null) {

			model.addAttribute("user", user);
			model.addAttribute("successMessage", ConstantMessage.USER_UPDATE_MESSAGE);
		}

		return "redirect:" + ConstantAction.HOME_ACTION;

	}

	/**
	 * @author Amit, Open User Registration Form Page .
	 */
	@RequestMapping(value = ConstantAction.USER_REGISTRATION_FORM_ACTION, method = RequestMethod.GET)
	public String userRegistrationForm(Model model) {
		model.addAttribute("user", new User());
		return ConstantURL.USER_REGISTRATION_FORM_URL;
	}

	/**
	 * @author Amit, Open Buyers Form Page .
	 */
	@RequestMapping(value = ConstantAction.BUYERS_FORM_ACTION, method = RequestMethod.GET)
	public String buyersForm(Model model) {
		return ConstantURL.BUYERS_FORM_URL;
	}

	/**
	 * @author Amit, Open Sellers Form Page .
	 */
	@RequestMapping(value = ConstantAction.SELLER_FORM_ACTION, method = RequestMethod.GET)
	public String sellersForm(Model model) {
		return ConstantURL.SELLER_FORM_URL;
	}

	/**
	 * @author Amit, Add User Login Method .
	 */
	@RequestMapping(value = ConstantAction.USER_LOGIN_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String userLogin(@ModelAttribute("user") User user, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int status = 0;
		if (user.getUserEmail() != null && user.getPassword() != null) {
			User oldUser = userService.findByUserEmailAndPasswordAndStatus(user.getUserEmail(), user.getPassword(),
					status);
			if (oldUser != null) {
				session.setAttribute(IConstant.USER_SESSION, oldUser);
				return "redirect:" + ConstantAction.HOME_ACTION;

			}
			model.addAttribute(IConstant.USER_ERROR_MESSAGE, ConstantMessage.INVALID_USERNAME_AND_PASSWORD_MESSAGE);
		}
		return ConstantURL.USER_LOGIN_FORM_URL;

	}

	/**
	 * @author Amit, Get Mobile Number Method .
	 */
	@ResponseBody
	@RequestMapping(value = ConstantAction.GET_MOBILE_NUMBER_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String getMobileNumber(HttpServletRequest request) {
		String mobileNumber = request.getParameter("mobileNumber") == null ? "" : request.getParameter("mobileNumber");
		boolean oldMobileNumber = userService.getMobileNumber(mobileNumber);
		if (oldMobileNumber) {
			return IConstant.AJAX_ERROR_MESSAGE;
		}

		return IConstant.AJAX_SUCCESS_MESSAGE;

	}

	/**
	 * @author Amit, Get Email Method .
	 */
	@ResponseBody
	@RequestMapping(value = ConstantAction.GET_EMAIL_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String getEmail(HttpServletRequest request) {
		String mobileNumber = request.getParameter("email") == null ? "" : request.getParameter("email");
		boolean oldEmail = userService.getEmail(mobileNumber);
		if (oldEmail) {
			return IConstant.AJAX_EMAIL_ERROR_MESSAGE;
		}

		return IConstant.AJAX_SUCCESS_MESSAGE;

	}

	/**
	 * @author Amit, Add User Logout Method .
	 */
	@RequestMapping(value = ConstantAction.USER_LOGOUT_ACTION, method = { RequestMethod.GET, RequestMethod.POST })
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.removeAttribute(IConstant.USER_SESSION);
		}
		return "redirect:" + ConstantAction.INDEX_ACTION;

	}

	/**
	 * @author Amit, Open Watch List Page .
	 */
	@RequestMapping(value = ConstantAction.WATCH_LIST_ACTION, method = RequestMethod.GET)
	public String watchList() {

		return ConstantURL.WATCH_LIST_URL;
	}

	/**
	 * @author Amit, Open Product Detail Page .
	 */
	@RequestMapping(value = ConstantAction.PRODUCT_ACTION, method = RequestMethod.GET)
	public String productDetail() {
		return ConstantURL.PRODUCT_FORM_URL;
	}

	/**
	 * @author Amit, Open Buy Sell Product Page .
	 */
	@RequestMapping(value = ConstantAction.BUY_SELL_PRODUCT_ACTION, method = RequestMethod.GET)
	public String buySellProduct() {
		return ConstantURL.BUY_SELL_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantURL.USER_UPDATE_URL, method = RequestMethod.GET)
	public String userUpdateForm(@ModelAttribute("user") User user, Model model, int userId) {

		model.addAttribute("user", new User());

		user = userService.updateUserProfile(userId);

		if (user != null) {
			model.addAttribute("user", user);
			
		}

		return ConstantURL.USER_UPDATE_URL;

	}

	/**
	 * @author Amit, Forgot Password Page .
	 */
	@RequestMapping(value = ConstantAction.FORGOT_PASSWORD_FORM_ACTION, method = RequestMethod.GET)
	public String forgotpasswordForm(Model model) {
		model.addAttribute("user", new User());
		return ConstantURL.FORGOT_PASSWORD_URL;
	}

	/**
	 * @author Amit, Forgot Password Page .
	 */
	@RequestMapping(value = ConstantAction.FORGOT_PASSWORD_ACTION, method = RequestMethod.POST)
	public String forgotpassword(@ModelAttribute("user") User user, Model model) {
		User oldEmail = userService.forgotpassword(user.getUserEmail() == null ? "" : user.getUserEmail());
		if (oldEmail != null) {
			model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.FORGOT_PASSWORD_SUCCESS_MESSAGE);
			return ConstantURL.FORGOT_PASSWORD_URL;
		}
		model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.FORGOT_PASSWORD_EROOR_MESSAGE);
		return ConstantURL.FORGOT_PASSWORD_URL;
	}

}
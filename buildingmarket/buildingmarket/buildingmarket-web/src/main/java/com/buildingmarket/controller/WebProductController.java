package com.buildingmarket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.buildingmarket.model.BuyerProduct;
import com.buildingmarket.model.OrderForm;
import com.buildingmarket.model.Product;
import com.buildingmarket.model.User;
import com.buildingmarket.service.ProductService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;

@Controller
public class WebProductController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = ConstantAction.ADMIN_OPEN_CSV_PRODUCT_ACTION_FORM, method = RequestMethod.GET)
	public String openProductByCsvForm(Model model, String successMessage) {
		model.addAttribute("successMessage", successMessage);
		return ConstantURL.ADMIN_OPEN_CSV_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.SAVE_CSV_PRODUCT_FILE, method = RequestMethod.POST)
	public String saveCsvProductFile(@RequestParam("file") MultipartFile file, HttpServletRequest request, Model model)
			throws Exception {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		productService.saveCsvFileData(file, user);
		model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.PRODUCT_SUCCESS_MESSAGE);
		return "redirect:" + ConstantAction.ADMIN_OPEN_CSV_PRODUCT_ACTION_FORM;
	}

	@RequestMapping(value = ConstantAction.ADMIN_OPEN_PRODUCT_ACTION_FORM, method = RequestMethod.GET)
	public String openProductForm(Model model) {
		return ConstantURL.ADMIN_OPEN_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADMIN_PRODUCT_ACTION_FORM, method = RequestMethod.GET)
	public String adminWelcome(Model model, String successMessage) {
		model.addAttribute("product", new Product());
		model.addAttribute("successMessage", successMessage);

		return ConstantURL.ADMIN_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADD_PRODUCT_FORM_ACTION, method = RequestMethod.POST)
	public String saveProductDetails(@ModelAttribute("product") Product product, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		product.setUser(user);
		boolean oldProduct = productService.saveProductDetails(product);
		if (oldProduct) {
			model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.ADD_PRODUCT_SUCCESS_MESSAGE);
			return "redirect:" + ConstantAction.ADMIN_PRODUCT_ACTION_FORM;
		}
		return ConstantURL.ADMIN_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.SELLER_PRODUCT_LIST_FORM_ACTION, method = RequestMethod.GET)
	public String sellerProductList(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute(IConstant.USER_SESSION);

		List<Product> sellerProductList = productService.getSellerProductList(user.getUserId());
		model.addAttribute("sellerProductList", sellerProductList);

		return ConstantURL.ADMIN_SELLER_PRODUCT_LIST_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.USER_UPDATE_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String updateProduct(Model model, HttpServletRequest request) {
		int productId = Integer
				.parseInt(request.getParameter("productSkuId") == null ? "" : request.getParameter("productSkuId"));

		Product getProductById = productService.getProductById(productId);
		model.addAttribute("product", getProductById);

		return ConstantURL.ADMIN_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.USER_DELETE_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String deleteProduct(Model model, HttpServletRequest request) {
		int productId = Integer
				.parseInt(request.getParameter("productSkuId") == null ? "" : request.getParameter("productSkuId"));

		boolean deleteProductById = productService.deleteProduct(productId);

		return "redirect:" + ConstantAction.SELLER_PRODUCT_LIST_FORM_ACTION;
	}

	/**
	 * @author Amit, Open Product Page .
	 */
	@RequestMapping(value = ConstantAction.MANAGE_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String manageProduct(@ModelAttribute("OrderForm") OrderForm orderForm, Model model, String successMessage) {
		int status = 0;
		List<Product> oldList = productService.findAllSeller(status);
		if (oldList != null) {
			model.addAttribute("oldList", oldList);
			model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, successMessage);
			return ConstantURL.USER_PRODUCT_LIST_FORM_URL;
		}
		return ConstantURL.USER_PRODUCT_LIST_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.BUY_PRODUCT_ACTION, method = RequestMethod.GET)
	public String buyerList(Model model, int productId) {

		int buyProduct = productService.buyProduct(productId);
		if (buyProduct != 0) {

			return "redirect:" + ConstantAction.MANAGE_PRODUCT_FORM_ACTION;
		}
		return ConstantURL.USER_PRODUCT_LIST_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.PRODUCT_BY_BUYER, method = RequestMethod.GET)
	public String showProductByBuyer(@ModelAttribute("BuyerProduct") BuyerProduct buyerProduct, Model model,
			String successMessage) {
		model.addAttribute("successMessage", successMessage);
		return ConstantURL.SHOW_PRODUCT_BY_BUYER;
	}

	@RequestMapping(value = ConstantAction.SAVE_PRODUCT_BY_BUYER, method = RequestMethod.POST)
	public String addProductByBuyer(@ModelAttribute("BuyerProduct") BuyerProduct buyerProduct, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(IConstant.USER_SESSION);
		buyerProduct.setUser(user);
		productService.addProductByBuyer(buyerProduct);
		model.addAttribute(IConstant.USER_SUCCESS_MESSAGE, ConstantMessage.PRODUCT_SUCCESS_MESSAGE);
		return "redirect:" + ConstantAction.PRODUCT_BY_BUYER;
	}

}

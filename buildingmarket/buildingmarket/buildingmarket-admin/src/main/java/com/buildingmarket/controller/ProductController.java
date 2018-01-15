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

import com.buildingmarket.model.AdminProduct;
import com.buildingmarket.model.AdminProductType;
import com.buildingmarket.model.BuyerProduct;
import com.buildingmarket.model.Product;
import com.buildingmarket.model.User;
import com.buildingmarket.service.ProductService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;
import com.buildingmarket.util.IConstant;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	

	@RequestMapping(value = ConstantAction.ADMIN_ADD_PRODUCT_ACTION_FORM, method = RequestMethod.GET)
	public String adminAddProduct(Model model) {
		model.addAttribute("adminProduct", new AdminProduct());
		return ConstantURL.ADMIN_ADD_PRODUCT_FORM_URL;
	}
	
	@RequestMapping(value = ConstantAction.ADMIN_ADD_PRODUCT_TYPE_ACTION_FORM, method = RequestMethod.GET)
	public String adminAddProductType(Model model) {
		List<AdminProduct> oldList = productService.findAdminProduct();
		model.addAttribute("oldList", oldList);
		model.addAttribute("adminProductType", new AdminProductType());
		return ConstantURL.ADMIN_ADD_PRODUCT_TYPE_FORM_URL;
	}
	
	@RequestMapping(value = ConstantAction.SAVE_PRODUCT, method = RequestMethod.POST)
	public String addProductType(@ModelAttribute("adminProductType") AdminProductType adminProductType, Model model) {
		boolean oldAdminProduct = productService.addProductType(adminProductType);
		if (oldAdminProduct) {
			model.addAttribute("successMessage", ConstantMessage.PRODUCT_SUCCESS_MESSAGE);
			return ConstantURL.ADMIN_ADD_PRODUCT_TYPE_FORM_URL;
		}
		return ConstantURL.ADMIN_ADD_PRODUCT_TYPE_FORM_URL;
	}

	

	@RequestMapping(value = ConstantAction.SAVE_PRODUCT, method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("adminProduct") AdminProduct adminProduct, Model model) {
		boolean oldAdminProduct = productService.addProduct(adminProduct);
		if (oldAdminProduct) {
			model.addAttribute("successMessage", ConstantMessage.PRODUCT_SUCCESS_MESSAGE);
			return "redirect:" + ConstantAction.ADMIN_ADD_PRODUCT_ACTION_FORM;
		}
		return ConstantURL.ADMIN_ADD_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.MANAGE_ADMIN_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String manageAdminProduct(Model model) {

		List<AdminProduct> oldList = productService.findAdminProduct();
		if (oldList != null) {
			model.addAttribute("oldList", oldList);
			return ConstantURL.ADMIN_MANAGE_ADD_PRODUCT_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_ADD_PRODUCT_FORM_URL;
	}

	/**
	 * @author Amit, Open Product Page .
	 */
	@RequestMapping(value = ConstantAction.MANAGE_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String manageProduct(Map<String, Object> map, Model model) {

		List<Product> oldList = productService.findAll();
		if (oldList != null) {
			model.addAttribute("oldList", oldList);
			return ConstantURL.ADMIN_MANAGE_PRODUCT_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_PRODUCT_FORM_URL;
	}

	/**
	 * @author Amit, Buyer Product Page .
	 */
	@RequestMapping(value = ConstantAction.MANAGE_BUYER_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String manageBuyerProduct(Model model) {

		List<BuyerProduct> oldBuyerList = productService.findAllBuyerProduct();
		if (oldBuyerList != null) {
			model.addAttribute("oldBuyerList", oldBuyerList);
			return ConstantURL.ADMIN_MANAGE_BUYER_PRODUCT_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_BUYER_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADMIN_UPDATE_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String updateProductForm(@ModelAttribute("product") Product product, Model model, int productId) {

		product = productService.updateProduct(productId);

		if (product != null) {

			model.addAttribute("product", product);
		}

		return ConstantURL.ADMIN_UPDATE_PRODUCT_FORM_URL;

	}

	@RequestMapping(value = ConstantAction.ADMIN_UPDATE_BUYER_PRODUCT_FORM_ACTION, method = RequestMethod.GET)
	public String updateBuyerProductForm(@ModelAttribute("buyerProduct") BuyerProduct buyerProduct, Model model,
			int buyerProductId) {

		buyerProduct = productService.updateBuyerProduct(buyerProductId);

		if (buyerProduct != null) {

			model.addAttribute("buyerProduct", buyerProduct);
		}

		return ConstantURL.ADMIN_UPDATE_BUYER_PRODUCT_FORM_URL;

	}

	@RequestMapping(value = ConstantAction.ADMIN_PRODUCT_BUYER_UPDATE_ACTION, method = RequestMethod.POST)
	public String updateBuyerProductDetails(@ModelAttribute("buyerProduct") BuyerProduct product, Model model) {

		product = productService.updateBuyerProductDetails(product);

		if (product != null) {

			return "redirect:" + ConstantAction.MANAGE_BUYER_PRODUCT_FORM_ACTION;
		}
		return ConstantURL.ADMIN_UPDATE_BUYER_PRODUCT_FORM_URL;

	}

	@RequestMapping(value = ConstantAction.ADMIN_PRODUCT_UPDATE_ACTION, method = RequestMethod.POST)
	public String updateProductDetails(@ModelAttribute("product") Product product, Model model) {

		product = productService.updateProductDetails(product);

		if (product != null) {

			return "redirect:" + ConstantAction.MANAGE_PRODUCT_FORM_ACTION;
		}
		return ConstantURL.ADMIN_UPDATE_PRODUCT_FORM_URL;

	}

	@RequestMapping(value = ConstantAction.DELETE_PRODUCT_ACTION, method = RequestMethod.GET)
	public String deleteBlogs(Model model, HttpServletRequest request, int productId) {

		boolean deleteProduct = productService.deleteBlogs(productId);
		if (deleteProduct) {

			return "redirect:" + ConstantAction.MANAGE_PRODUCT_FORM_ACTION;
		}
		return ConstantURL.ADMIN_MANAGE_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.DELETE_BUYER_PRODUCT_ACTION, method = RequestMethod.GET)
	public String deleteBuyerProduct(Model model, HttpServletRequest request, int buyerProductId) {

		boolean deleteProduct = productService.deleteBuyerProduct(buyerProductId);
		if (deleteProduct) {

			return "redirect:" + ConstantAction.MANAGE_BUYER_PRODUCT_FORM_ACTION;
		}
		return ConstantURL.ADMIN_MANAGE_BUYER_PRODUCT_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADMIN_SELLER_LIST_ACTION, method = RequestMethod.GET)
	public String sellerList(Model model) {
		int status = 0;
		List<Product> sellerList = productService.findAllSeller(status);
		if (sellerList != null) {
			model.addAttribute("sellerList", sellerList);
			return ConstantURL.ADMIN_SELLER_FORM_URL;
		}
		return ConstantURL.ADMIN_SELLER_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADMIN_BUYER_LIST_ACTION, method = RequestMethod.GET)
	public String buyerList(Model model) {
		int status = 1;
		List<Product> buyerList = productService.findAllBuyer(status);
		if (buyerList != null) {
			model.addAttribute("buyerList", buyerList);
			return ConstantURL.ADMIN_BUYER_FORM_URL;
		}
		return ConstantURL.ADMIN_BUYER_FORM_URL;
	}

}

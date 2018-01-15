package com.buildingmarket.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.Blogs;
import com.buildingmarket.model.Product;
import com.buildingmarket.service.BlogsService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantMessage;
import com.buildingmarket.util.ConstantURL;

@Controller
public class BlogsController {

	@Autowired
	private BlogsService blogsService;

	/**
	 * @author Amit, Open blogs Page .
	 */

	@RequestMapping(value = ConstantAction.ADMIN_BLOGS_ACTION, method = RequestMethod.GET)
	public String adminWelcome(Model model) {

		model.addAttribute("blogs", new Blogs());

		return ConstantURL.ADMIN_BLOGS_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.ADD_BLOGS_FORM_ACTION, method = RequestMethod.POST)
	public String saveBlogsDetails(@ModelAttribute("blogs") Blogs blogs, Model model) {
		boolean oldBlogs = blogsService.saveBlogsDetails(blogs);
		if (oldBlogs) {
			model.addAttribute("successMessage", ConstantMessage.CONTACT_SUCCESS_MESSAGE);
			return "redirect:" + ConstantAction.MANAGE_BLOGS_FORM_ACTION;
		}
		return ConstantURL.ADMIN_BLOGS_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.MANAGE_BLOGS_FORM_ACTION, method = RequestMethod.GET)
	public String manageBlags(Map<String, Object> map, Model model) {
		List<Blogs> oldList = blogsService.findAll();
		if (oldList != null) {
			model.addAttribute("oldList", oldList);
			return ConstantURL.ADMIN_MANAGE_BLOGS_FORM_URL;
		}
		return ConstantURL.ADMIN_MANAGE_BLOGS_FORM_URL;
	}

	@RequestMapping(value = ConstantAction.DELETE_BLOGS_ACTION, method = RequestMethod.GET)
	public String deleteBlogs(Model model, HttpServletRequest request) {
		int blogsId = Integer.parseInt(request.getParameter("blogsId") == null ? "0" : request.getParameter("blogsId"));
		boolean deleteBlogs = blogsService.deleteBlogs(blogsId);
		if (deleteBlogs) {
			model.addAttribute("deleteMessage", ConstantMessage.DELETE_MESSAGE);
			return "redirect:" + ConstantAction.MANAGE_BLOGS_FORM_ACTION;
		}
		return ConstantURL.ADMIN_MANAGE_BLOGS_FORM_URL;
	}
	@RequestMapping(value=ConstantAction.ADMIN_UPDATE_BLOGS_FORM_ACTION,method = RequestMethod.GET)
	public String updateProductForm(Model model,int blogsId){
		Blogs blogs= new Blogs();
		blogs=blogsService.updateBlogs(blogsId);
		
		if(blogs!=null){
			
			model.addAttribute("blogs", blogs);
		}
		
		return ConstantURL.ADMIN_BLOGS_FORM_URL;
		
	}

}
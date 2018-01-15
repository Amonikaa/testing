package com.buildingmarket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buildingmarket.model.Blogs;
import com.buildingmarket.service.BlogsService;
import com.buildingmarket.util.ConstantAction;
import com.buildingmarket.util.ConstantURL;

@Controller
public class WebBlogsController {
	@Autowired
	private BlogsService blogsService;
	
	/**
	 * @author Amit, Open Blogs Page .
	 */
	@RequestMapping(value = ConstantAction.BLOGS_ACTION, method = RequestMethod.GET)
	public String blogs(Model model) {
	   List<Blogs> blogs= blogsService.findAll();
	   model.addAttribute("blogs", blogs);
		return ConstantURL.BLOGS_URL;
	}
	
	
}

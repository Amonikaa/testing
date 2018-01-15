package com.buildingmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buildingmarket.service.AlterService;
import com.buildingmarket.util.ConstantAction;

@Controller
public class AlterWebService {
	@Autowired
	private AlterService alterService;

	/**
	 * @author Amit,Alter Web Service .
	 */
	@ResponseBody
	@RequestMapping(value = ConstantAction.ALTER_WEB_SERVICE, method = RequestMethod.GET)
	public String webService(Model model) {
		String e = "buildingmarket@gmail.com";
		String p = "123";
		String n = "Amit";
		String l = "gupta";

		alterService.alterTable(e, p, n, l);
		return "";
	}

}

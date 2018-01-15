package com.buildingmarket.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.buildingmarket.util.ConstantURL;

@ControllerAdvice
public class AdminErrorController {

	@ExceptionHandler(value = Throwable.class)
	public ModelAndView redirectToErrorPage(Exception e) {
		ModelAndView mav = new ModelAndView(ConstantURL.ADMIN_ERROR);
		mav.addObject("errMsg", e);
		return mav;
	}

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handleError404(HttpServletRequest request, Exception e) {
		ModelAndView mav = new ModelAndView(ConstantURL.ADMIN_HOME_FORM_URL);
		mav.addObject("exception", e);
		return mav;
	}
}
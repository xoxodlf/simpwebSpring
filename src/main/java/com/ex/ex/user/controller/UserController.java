package com.ex.ex.user.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String article(Locale locale, Model model) {
		logger.info("Welcome sign-in! The client locale is {}.", locale);
		
		
		
		return "empty/sign-in.emp";
	}
}

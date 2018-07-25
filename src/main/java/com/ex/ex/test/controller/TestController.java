package com.ex.ex.test.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex.ex.test.domain.UserDTO;
import com.ex.ex.test.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/test")
public class TestController {
	
	@Inject
	private TestService service;
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("Welcome test! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		List<UserDTO> list;
		list = service.DBCheck();
		
		
		for(UserDTO user : list) {
			System.out.println(user.toString());
		}
		model.addAttribute("userList", list);
		
		
		return "main/test.lay";
	}
	
	@RequestMapping(value = "/empty", method = RequestMethod.GET)
	public String empty(Locale locale, Model model) {
		logger.info("Welcome empty! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "empty/empty.emp";
	}
	
}

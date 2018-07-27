package com.ex.ex.unknown.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/unknown")
public class UnknownController {
private static final Logger logger = LoggerFactory.getLogger(UnknownController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) {
		logger.info("Welcome boardListView! The client locale is {}.", locale);
		return "main/unknown/boardListView.lay";
	}
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String boardForm(Locale locale, Model model) {
		logger.info("Welcome boardForm! The client locale is {}.", locale);
		return "main/unknown/boardForm.lay";
	}
}

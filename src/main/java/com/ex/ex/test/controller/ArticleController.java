package com.ex.ex.test.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex.ex.test.domain.ArticleDTO;
import com.ex.ex.test.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Inject
	private ArticleService service;
	
	private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
	
	@RequestMapping(value = "/article", method = RequestMethod.GET)
	public String article(Locale locale, Model model) {
		logger.info("Welcome article! The client locale is {}.", locale);
		
		List<ArticleDTO> list= service.listAll();
		
		model.addAttribute("list", list);
		
		return "empty/empty.emp";
	}
}

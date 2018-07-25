package com.ex.ex.notice.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String article(Locale locale, Model model) {
		logger.info("Welcome notice! The client locale is {}.", locale);

		return "main/notice/noticeView.lay";
	}
}

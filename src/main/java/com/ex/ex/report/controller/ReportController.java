package com.ex.ex.report.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex.ex.notice.controller.NoticeController;

@Controller
@RequestMapping("/report")
public class ReportController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String report(Locale locale, Model model) {
		logger.info("Welcome report! The client locale is {}.", locale);

		return "main/report/reportListView.lay";
	}
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String reportModify(Locale locale, Model model) {
		logger.info("Welcome report! The client locale is {}.", locale);
		
		return "main/report/reportModify.lay";
	}
	@RequestMapping(value = "/Form", method = RequestMethod.GET)
	public String reportList(Locale locale, Model model) {
		logger.info("Welcome report! The client locale is {}.", locale);
		
		return "main/report/reportForm.lay";
	}
	@RequestMapping(value = "/View", method = RequestMethod.GET)
	public String reportForm(Locale locale, Model model) {
		logger.info("Welcome report! The client locale is {}.", locale);
		
		return "main/report/reportView.lay";
	}
}

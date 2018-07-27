package com.ex.ex.information.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/information")
public class InformationController {
	
	@RequestMapping(value="/")
	public String formbody() {
		return "main/information/infoform.lay";
	}
	
}

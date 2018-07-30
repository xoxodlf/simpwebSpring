package com.ex.ex.information.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/information")
public class InformationController {
	
	@RequestMapping(value="/form")
	public String formbody() {
		return "main/information/infoForm.lay";
	}
	
	@RequestMapping(value="/commend")
	public String infocommend() {
		return "main/information/infoCommend.lay";
	}
	@RequestMapping(value="/writer")
	public String Writer() {
		return "main/information/infoWriter.lay";
	}
	@RequestMapping(value="/modify")
	public String modify() {
		return "main/information/infoModify.lay";
	}
	@RequestMapping(value="/extra")
	public String extra() {
		return "main/information/extra.lay";
	}
	
}

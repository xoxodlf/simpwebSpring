package com.ex.ex.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	Service service;

	@RequestMapping("/")
	public String list(Model model) {
		System.out.println("notice()");

		// service = new ListService();
		// service.execute(model);

		return "main/notice/noticeView.lay";
	}

	@RequestMapping("/write_view")
	public String write_view(Model model) {
		System.out.println("write_view()");

		return "write_view";
	}

	@RequestMapping("/write")
	public String write(HttpServletRequest request, Model model) {
		System.out.println("write()");
		model.addAttribute("request", request);
		// service = new WriteService();
		// service.execute(model);

		return "main/notice/noticeWrite.lay";
	}

	@RequestMapping("/content")
	public String content_view(HttpServletRequest request, Model model) {
		System.out.println("content_view()");

		model.addAttribute("request", request);
		// service = new ContentService();
		// service.execute(model);

		return "main/notice/noticeContent.lay";
	}

	// method = RequestMethod.POST, value =
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request, Model model) {
		System.out.println("modify()");

		model.addAttribute("request", request);
		// service = new ModifyService();
		// service.execute(model);

		return "main/notice/noticeModify.lay";
	}

	@RequestMapping("/reply_view")
	public String reply_view(HttpServletRequest request, Model model) {
		System.out.println("reply_view()");

		model.addAttribute("request", request);
		// service = new ReplyViewService();
		// service.execute(model);

		return "reply_view";

	}

	@RequestMapping("/reply")
	public String reply(HttpServletRequest request, Model model) {
		System.out.println("reply()");

		model.addAttribute("request", request);
		// service = new ReplyService();
		// service.execute(model);
		return "redirect:notice";
	}

	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("delete()");

		model.addAttribute("request", request);
		// service = new DeleteService();
		// service.execute(model);

		return "redirect:notice";
	}

}

package com.ex.ex.notice.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ex.ex.notice.domain.NoticeDTO;
import com.ex.ex.notice.domain.NoticeUserDTO;
import com.ex.ex.notice.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Inject
	NoticeService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("noticeController");
		List<NoticeDTO> list = service.listAll();
		for (NoticeDTO dto : list) {
			NoticeUserDTO user = service.getuName(dto.getUserNo());
			dto.setUserName(user.getuName());
		}
		model.addAttribute("noticeList", list);
		return "main/notice/noticeView.lay";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(HttpServletRequest request, Model model) {
		return "main/notice/noticeWrite.lay";
	}

	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String content_view(Locale locale, Model model, @RequestParam("articleNo") int articleNo) {
		logger.info("noticeController");
		service.upCount(articleNo);
		NoticeDTO notice = service.detail(articleNo);
		model.addAttribute("notice", notice);
		return "main/notice/noticeContent.lay";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(NoticeDTO notice) {
		logger.info("insert");
		service.insert(notice);
		return "redirect:/notice/";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modify(Locale locale, Model model, @RequestParam("articleNo") int articleNo) {
		logger.info("modify");
		NoticeDTO notice = service.detail(articleNo);
		model.addAttribute("notice", notice);
		return "main/notice/noticeModify.lay";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(NoticeDTO notice, RedirectAttributes rttr) {
		logger.info("update");
		service.modify(notice);
		return "redirect:/notice/";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(NoticeDTO notice) {
		logger.info("delete");
		service.delete(notice.getArticleNo());
		return "redirect:/notice/";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@RequestParam("searchOption") String searchOption,
			@RequestParam("searchWord") String searchWord, Model model) {
		logger.info("search");
		if (searchWord.equals(""))
			searchWord = "";
		List<NoticeDTO> list = service.search(searchOption, searchWord);
		
		model.addAttribute("noticeList", list);
		return "main/notice/noticeView.lay";
	}

}

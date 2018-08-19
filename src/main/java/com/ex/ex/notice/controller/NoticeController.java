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
import com.ex.ex.notice.domain.NoticeReplyDTO;
import com.ex.ex.notice.domain.NoticeUserDTO;
import com.ex.ex.notice.service.NoticePaging;
import com.ex.ex.notice.service.NoticeReplyService;
import com.ex.ex.notice.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Inject
	NoticeService service;
	@Inject
	NoticeReplyService rservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(NoticeDTO notice, @RequestParam(defaultValue = "1") int curPage, HttpServletRequest request,
			@RequestParam(defaultValue = "a") String searchOption, @RequestParam(defaultValue = "") String searchWord,
			Model model) throws Exception {
		logger.info("noticeController");

		int listCnt = service.selectBoardListCnt(notice, searchOption, searchWord);
		NoticePaging paging = new NoticePaging(listCnt, curPage);
		List<NoticeDTO> list = service.listAll();

		for (NoticeDTO dto : list) {
			NoticeUserDTO user = service.getuName(dto.getUserNo());
			dto.setUserName(user.getuName());
		}
		model.addAttribute("NoticePaging", paging);
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
		List<NoticeReplyDTO> list = rservice.listAll(articleNo);
		NoticeDTO notice = service.detail(articleNo);
		for (NoticeReplyDTO dto : list) {
			NoticeUserDTO user = service.getuName(dto.getUserNo());
			dto.setUserName(user.getuName());
			System.out.println(dto.toString());
		}

		model.addAttribute("notice", notice);
		model.addAttribute("replyList", list);

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
		service.deleteNotice(notice.getArticleNo());
		return "redirect:/notice/";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(NoticeDTO notice, @RequestParam(defaultValue = "1") int curPage, HttpServletRequest request,
			@RequestParam(defaultValue = "a") String searchOption, @RequestParam(defaultValue = "") String searchWord,
			Model model) throws Exception {
		int listCnt = service.selectBoardListCnt(notice, searchOption, searchWord);
		NoticePaging paging = new NoticePaging(listCnt, curPage);
		logger.info("search");
		if (searchWord.equals(""))
			searchWord = "";
		List<NoticeDTO> list = service.search(searchOption, searchWord,paging.getStartIndex(),paging.getPageSize());
		model.addAttribute("NoticePaging", paging);
		model.addAttribute("noticeList", list);
		return "main/notice/noticeView.lay";
	}

	@RequestMapping(value = "/insertComment", method = RequestMethod.POST)
	public String insertComment(NoticeDTO notice, RedirectAttributes rttr) {
		logger.info("insertComment");
		service.updateOrder(notice.getGroup(), notice.getOrder());
		service.insertComment(notice);
		rttr.addFlashAttribute("result_massage", "createsuccess");
		return "redirect:/notice/";
	}

	@RequestMapping(value = "/writeComment", method = RequestMethod.GET)
	public String writeComment(Locale locale, Model model, @RequestParam("articleNo") int articleNo) {
		logger.info("Welcome writeComment! The client locale is {}.", locale);
		NoticeDTO notice = service.detail(articleNo);
		model.addAttribute("notice", notice);
		return "main/notice/noticeComment.lay";
	}

	@RequestMapping(value = "/addReply", method = RequestMethod.POST)
	public String insertReply(NoticeReplyDTO reply, RedirectAttributes rttr) {
		logger.info("addReply");
		logger.info(reply.toString());
		rservice.insert(reply);
		rttr.addFlashAttribute("result_massage", "createsuccess");
		return "redirect:/notice/content?articleNo=" + reply.getArticleNo();
	}

}

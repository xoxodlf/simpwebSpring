package com.ex.ex.report.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ex.ex.report.domain.ReportDTO;
import com.ex.ex.report.domain.ReportReplyDTO;
import com.ex.ex.report.service.ReportPaging;
import com.ex.ex.report.service.ReportService;
import com.ex.ex.unknown.domain.UnknownDTO;

@Controller
@RequestMapping("/report")
public class ReportController {
	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);

	@Inject
	ReportService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String report(Locale locale, Model model) {
		logger.info("Here is ReportBoard!", locale);

		List<ReportDTO> list = service.listAll();
		List<String> writer = new ArrayList<String>();

		for (ReportDTO dto : list) {
			int wn = dto.getUserNo();
			writer.add(service.writer(wn));
		}
		
		int articleCount = service.countArticle();
		ReportPaging p = new ReportPaging(articleCount,1);
		
		model.addAttribute("page",p);
		model.addAttribute("Writer", writer);
		model.addAttribute("reportList", list);

		return "main/report/reportListView.lay";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String reportModify(Locale locale, Model model, @RequestParam("articleNo") int articleNo) {
		logger.info("Here is ReportModify!", locale);

		ReportDTO dto = service.article(articleNo);

		model.addAttribute("report", dto);

		return "main/report/reportModify.lay";
	}

	@RequestMapping(value = "/modifying", method = RequestMethod.POST)
	public String reportModifying(ReportDTO dto, Model model, @RequestParam("articleNo") int articleNo) {
		service.modify(dto);

		ReportDTO dto2 = service.article(articleNo);

		model.addAttribute("report", dto2);

		return "main/report/reportView.lay";
	}

	@RequestMapping(value = "/Form", method = RequestMethod.GET)
	public String reportList(Locale locale, Model model) {
		logger.info("Here is ReportForm!", locale);

		return "main/report/reportForm.lay";
	}

	@RequestMapping(value = "/View", method = RequestMethod.GET)
	public String reportForm(Locale locale, Model model, @RequestParam("articleNo") int articleNo) {
		logger.info("Here is ReportView!", locale);

		service.count(articleNo);
		ReportDTO dto = service.article(articleNo);
		List<ReportReplyDTO> replyDto = service.replyList(articleNo);

		List<String> writer = new ArrayList<String>();

		for (ReportReplyDTO rDto : replyDto) {
			int wn = rDto.getUserNo();
			writer.add(service.writer(wn));
		}

		model.addAttribute("Writer", writer);
		model.addAttribute("report", dto);
		model.addAttribute("replyList", replyDto);

		return "main/report/reportView.lay";
	}

	@RequestMapping(value = "/reportWriting", method = RequestMethod.GET)
	public String reportWriting(ReportDTO dto) {

		service.insert(dto);

		return "redirect:/report/";
	}
	
	@RequestMapping(value = "comment",method=RequestMethod.GET)
	public String reportComment(Locale locale, Model model,@RequestParam("articleNo") int articleNo) {
		
		ReportDTO dto = service.article(articleNo);
		model.addAttribute("report",dto);
		
		return "main/report/reportComment.lay";
	}

	@RequestMapping(value = "commentWriting", method = RequestMethod.GET)
	public String reportCommentWriting(ReportDTO dto, RedirectAttributes rttr) {
		
		System.out.println(dto.toString());
		
		service.orderUpdate(dto.getGroup(), dto.getOrder());
		service.commentInsert(dto);

		rttr.addFlashAttribute("result_massage", "commentSuccess");

		return "redirect:/report/";
	}

	@RequestMapping(value = "/reportReply", method = RequestMethod.GET)
	public String reportReplyWriting(ReportReplyDTO dto) {

		service.replyInsert(dto);

		return "redirect:/report/View?articleNo=" + dto.getArticleNo();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String reportDelete(ReportDTO dto, RedirectAttributes rttr) {

		service.delete(dto);
		rttr.addFlashAttribute("result_massage", "deletesuccess");

		return "redirect:/report/";
	}

	@RequestMapping(value = "/searchList", method = RequestMethod.GET)
	public String reportSearchList(@RequestParam("searchType") String searchType,
			@RequestParam("keyword") String keyword,@RequestParam(defaultValue="1") int curPage,Model model) {
		if (keyword.equals(""))
			keyword = "";

		int articleCount=service.countArticle(searchType, keyword);
		ReportPaging p = new ReportPaging(articleCount,curPage);
		
		List<ReportDTO> list = service.searchList(searchType, keyword,p.getArticleCnt(),p.getPageSize());

		List<String> writer = new ArrayList<String>();

		for (ReportDTO dto : list) {
			int wn = dto.getUserNo();
			writer.add(service.writer(wn));
		}

		model.addAttribute("page",p);
		model.addAttribute("Writer", writer);
		model.addAttribute("reportList", list);

		return "main/report/reportListView.lay";
	}
}

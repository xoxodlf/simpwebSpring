package com.ex.ex.report.service;

import java.util.List;

import com.ex.ex.report.domain.ReportDTO;
import com.ex.ex.report.domain.ReportReplyDTO;

public interface ReportService {
	public void insert(ReportDTO dto);
	
	public void replyInsert(ReportReplyDTO dto);
	
	public void commentInsert(ReportDTO dto);

	public List<ReportDTO> listAll();
	
	public List<ReportReplyDTO> replyList(int articleNo);

	public void modify(ReportDTO dto);
	
	public void orderUpdate(int group,int order);

	public void delete(ReportDTO dto);

	public ReportDTO article(int articleNo);

	public void count(int articleNo);
	
	public String writer(int userNo);
	
	public List<ReportDTO> searchList(String searchType,String keyword,int start,int page);
	
	public int countArticle(String searchType, String keyword);
	
	public int countArticle();
}

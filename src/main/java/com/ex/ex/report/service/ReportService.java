package com.ex.ex.report.service;

import java.util.List;

import com.ex.ex.report.domain.ReportDTO;

public interface ReportService {
	public void insert(ReportDTO dto);

	public List<ReportDTO> listAll();

	public void modify(ReportDTO dto);

	public void delete(ReportDTO dto);

	public ReportDTO article(int articleNo);

	public void count(int articleNo);
	
	public String writer(int userNo);
	
	public List<ReportDTO> searchList(String searchType,String keyword);
}

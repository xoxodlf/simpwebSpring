package com.ex.ex.report.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.report.dao.ReportDAO;
import com.ex.ex.report.domain.ReportDTO;

@Service
public class ReportServicelmpl implements ReportService {
	
	@Inject
	private ReportDAO dao;
	
	@Override
	public void insert(ReportDTO dto) {
		// TODO Auto-generated method stub
		dao.insert(dto);
	}

	@Override
	public List<ReportDTO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public void modify(ReportDTO dto) {
		// TODO Auto-generated method stub
		dao.modify(dto);
	}

	@Override
	public void delete(ReportDTO dto) {
		// TODO Auto-generated method stub
		dao.delete(dto);
	}

	@Override
	public ReportDTO article(int articleNo) {
		// TODO Auto-generated method stub
		return dao.article(articleNo);
	}

	@Override
	public void count(int articleNo) {
		// TODO Auto-generated method stub
		dao.count(articleNo);
	}

	@Override
	public String writer(int userNo) {
		// TODO Auto-generated method stub
		return dao.writer(userNo);
	}

	@Override
	public List<ReportDTO> searchList(String searchType,String keyword) {
		// TODO Auto-generated method stub
		return dao.searchList(searchType,keyword);
	}

}

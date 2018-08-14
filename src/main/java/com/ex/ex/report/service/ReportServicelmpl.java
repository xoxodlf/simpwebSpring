package com.ex.ex.report.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.report.dao.ReportDAO;
import com.ex.ex.report.domain.ReportDTO;
import com.ex.ex.report.domain.ReportReplyDTO;

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
	public List<ReportDTO> searchList(String searchType,String keyword,int start,int page) {
		// TODO Auto-generated method stub
		return dao.searchList(searchType,keyword,start,page);
	}

	@Override
	public List<ReportReplyDTO> replyList(int articleNo) {
		// TODO Auto-generated method stub
		return dao.replyList(articleNo);
	}

	@Override
	public void replyInsert(ReportReplyDTO dto) {
		// TODO Auto-generated method stub
		dao.replyInsert(dto);
	}

	@Override
	public void commentInsert(ReportDTO dto) {
		// TODO Auto-generated method stub
		dao.commentInsert(dto);
	}

	@Override
	public void orderUpdate(int group, int order) {
		// TODO Auto-generated method stub
		dao.orderUpdate(group,order);
	}

	@Override
	public int countArticle(String searchType, String keyword) {
		// TODO Auto-generated method stub
		return dao.countArticle(searchType,keyword);
	}
	
	public int countArticle() {
		// TODO Auto-generated method stub
		return dao.countArticle();
	}

}

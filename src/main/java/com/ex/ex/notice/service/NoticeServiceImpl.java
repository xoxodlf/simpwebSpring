package com.ex.ex.notice.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.notice.dao.NoticeDAO;
import com.ex.ex.notice.domain.NoticeDTO;
import com.ex.ex.notice.domain.NoticeUserDTO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;

	@Override
	public void insert(NoticeDTO notice) {
		dao.insert(notice);
	}

	@Override
	public List<NoticeDTO> listAll() {
		return dao.listAll();
	}

	@Override
	public NoticeUserDTO getuName(int userno) {
		return dao.getuName(userno);
	}

	@Override
	public NoticeDTO detail(int articleNo) {
		return dao.detail(articleNo);
	}

	@Override
	public void upCount(int articleNo) {
		dao.upCount(articleNo);
	}

	@Override
	public void modify(NoticeDTO notice) {
		dao.modify(notice);
	}

	@Override
	public void delete(int articleNo) {
		dao.delete(articleNo);
	}

	@Override
	public List<NoticeDTO> search(String searchOption, String searchWord, int startIndex, int pageSize) {
		return dao.search(searchOption, searchWord, startIndex, pageSize);
	}

	@Override
	public void insertComment(NoticeDTO notice) {
		dao.insertComment(notice);
	}

	@Override
	public void updateOrder(int group, int order) {
		dao.updateOrder(group, order);

	}

	@Override
	public void deleteNotice(int articleNo) {
		dao.deleteNotice(articleNo);
	}

	@Override
	public int selectBoardListCnt(NoticeDTO notice, String searchOption, String searchWord) {
		return dao.selectBoardListCnt(notice,searchOption,searchWord);
	}

}

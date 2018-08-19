package com.ex.ex.notice.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.ex.ex.notice.dao.NoticeReplyDAO;
import com.ex.ex.notice.domain.NoticeReplyDTO;
@Service
public class NoticeReplyServiceImpl implements NoticeReplyService {

	@Inject
	NoticeReplyDAO dao;

	@Override
	public List<NoticeReplyDTO> listAll(int articleNo) {
		return dao.listAll(articleNo);
	}

	@Override
	public void insert(NoticeReplyDTO reply) {
		dao.insert(reply);
	}

}

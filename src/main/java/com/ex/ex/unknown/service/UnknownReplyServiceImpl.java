package com.ex.ex.unknown.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.unknown.dao.UnknownReplyDAO;
import com.ex.ex.unknown.domain.UnknownReplyDTO;
@Service
public class UnknownReplyServiceImpl implements UnknownReplyService {
	@Inject
	UnknownReplyDAO dao;
	
	@Override
	public List<UnknownReplyDTO> listAll(int articleNo) {
		return dao.listAll(articleNo);
	}

	@Override
	public void insert(UnknownReplyDTO reply) {
		dao.insert(reply);
	}

}

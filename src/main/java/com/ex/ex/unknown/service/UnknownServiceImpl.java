package com.ex.ex.unknown.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.unknown.dao.UnknownDAO;
import com.ex.ex.unknown.domain.UnknownDTO;

@Service
public class UnknownServiceImpl implements UnknownService {
	
	@Inject
	private UnknownDAO dao;
	
	@Override
	public void insert(UnknownDTO unknown) {
		dao.insert(unknown);
	}

	@Override
	public List<UnknownDTO> listAll() {
		return dao.listAll();
	}

	@Override
	public void modify(UnknownDTO unknown) {
		dao.modify(unknown);
	}

	@Override
	public void delete(int articleNo) {
		dao.delete(articleNo);
	}

	@Override
	public UnknownDTO detail(int articleNo) {
		return dao.detail(articleNo);
	}

}

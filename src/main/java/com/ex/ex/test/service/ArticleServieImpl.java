package com.ex.ex.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.test.dao.ArticleDAO;
import com.ex.ex.test.domain.ArticleDTO;

@Service
public class ArticleServieImpl implements ArticleService {
	@Inject
	private ArticleDAO dao;
	
	@Override
	public List<ArticleDTO> listAll() {
		return dao.listAll();
	}

}

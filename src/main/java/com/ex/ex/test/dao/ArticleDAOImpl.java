package com.ex.ex.test.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.test.domain.ArticleDTO;
@Repository
public class ArticleDAOImpl implements ArticleDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.ex.ex.mappers.ArticleMapper";
	
	@Override
	public List<ArticleDTO> listAll() {
		return session.selectList(namespace+".listAll");
	}

}

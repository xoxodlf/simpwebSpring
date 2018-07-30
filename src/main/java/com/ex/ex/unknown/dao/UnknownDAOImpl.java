package com.ex.ex.unknown.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.unknown.domain.UnknownDTO;

@Repository
public class UnknownDAOImpl implements UnknownDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.ex.ex.mappers.UnknownMapper";
	
	@Override
	public void insert(UnknownDTO unknown) {
		session.insert(namespace+".insert", unknown);
	}

	@Override
	public List<UnknownDTO> listAll() {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public void modify(UnknownDTO unknown) {
		session.update(namespace+".modify", unknown);
	}

	@Override
	public void delete(int articleNo) {
		session.delete(namespace+".delete", articleNo);
	}

	@Override
	public UnknownDTO detail(int articleNo) {
		return session.selectOne(namespace+".detail", articleNo);
	}

	@Override
	public void upCount(int articleNo) {
		session.update(namespace+".upCount", articleNo);
	}

}

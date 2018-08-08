package com.ex.ex.unknown.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public List<UnknownDTO> listSearch(String searchType, String keyword, int startIndex, int pageSize) {
		Map<String, Object> paraMap = new HashMap<String,Object>();
		paraMap.put("searchType", searchType);
		paraMap.put("keyword", keyword);
		paraMap.put("startIndex", startIndex);
		paraMap.put("pageSize", pageSize);
		return session.selectList(namespace+".listSearch", paraMap);
	}

	@Override
	public void updateOrder(int group, int order) {
		Map<String, Object> paraMap = new HashMap<String,Object>();
		paraMap.put("group", group);
		paraMap.put("order", order);
		session.update(namespace+".updateOrder", paraMap);
	}

	@Override
	public void insertComment(UnknownDTO unknown) {
		session.insert(namespace+".insertComment", unknown);
	}

	@Override
	public void deleteModify(int articleNo) {
		session.update(namespace+".deleteModify", articleNo);
	}

	@Override
	public int cntAtricle(String searchType, String keyword) {
		Map<String, Object> paraMap = new HashMap<String,Object>();
		paraMap.put("searchType", searchType);
		paraMap.put("keyword", keyword);
		return session.selectOne(namespace+".cntArticle", paraMap);
	}

}

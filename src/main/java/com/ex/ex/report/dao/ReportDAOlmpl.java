package com.ex.ex.report.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.report.domain.ReportDTO;
import com.ex.ex.report.domain.ReportReplyDTO;

@Repository
public class ReportDAOlmpl implements ReportDAO {
	
	@Inject
	private SqlSession session;
	
	private String namespace = "com.ex.ex.mappers.ReportMapper";

	@Override
	public void insert(ReportDTO dto) {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert",dto);
	}

	@Override
	public List<ReportDTO> listAll() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}

	@Override
	public void modify(ReportDTO dto) {
		// TODO Auto-generated method stub
		session.update(namespace+".modify",dto);
	}

	@Override
	public void delete(ReportDTO dto) {
		// TODO Auto-generated method stub
		session.update(namespace+".delete",dto);
	}

	@Override
	public ReportDTO article(int articleNo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".article",articleNo);
	}

	@Override
	public void count(int articleNo) {
		// TODO Auto-generated method stub
		session.update(namespace+".count",articleNo);
	}

	@Override
	public String writer(int userNo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".writer",userNo);
	}

	@Override
	public List<ReportDTO> searchList(String searchType, String keyword,int start,int page) {
		// TODO Auto-generated method stub
		Map<String, Object> m = new HashMap<String,Object>();
		m.put("searchType", searchType);
		m.put("keyword", keyword);
		m.put("start", start);
		m.put("page", page);
		
		return session.selectList(namespace+".searchList",m);
	}

	@Override
	public List<ReportReplyDTO> replyList(int articleNo) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".replyList",articleNo);
	}

	@Override
	public void replyInsert(ReportReplyDTO dto) {
		// TODO Auto-generated method stub
		session.insert(namespace+".replyInsert",dto);
	}

	@Override
	public void commentInsert(ReportDTO dto) {
		// TODO Auto-generated method stub
		session.insert(namespace+".commentInsert",dto);
	}

	@Override
	public void orderUpdate(int group, int order) {
		// TODO Auto-generated method stub
		Map<String, Object> m = new HashMap<String,Object>();
		m.put("group", group);
		m.put("order", order);
		session.update(namespace+".orderUpdate",m);
	}

	@Override
	public int countArticle(String searchType, String keyword) {
		// TODO Auto-generated method stub
		Map<String, Object> m = new HashMap<String,Object>();
		m.put("searchType", searchType);
		m.put("keyword", keyword);
		
		return session.selectOne(namespace+".countArticle",m);
	}

	@Override
	public int countArticle() {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countArticle");
	}
}

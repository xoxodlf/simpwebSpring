package com.ex.ex.report.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.report.domain.ReportDTO;

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
		session.delete(namespace+".delete",dto);
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
	public List<ReportDTO> searchList(String searchType, String keyword) {
		// TODO Auto-generated method stub
		Map<String, String> m = new HashMap<String,String>();
		m.put("searchType", searchType);
		m.put("keyword", keyword);
		
		return session.selectList(namespace+".searchList",m);
	}
}

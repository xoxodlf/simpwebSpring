package com.ex.ex.notice.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.notice.domain.NoticeDTO;
import com.ex.ex.notice.domain.NoticeUserDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	@Inject
	private SqlSession session;

	private static String namespace = "com.ex.ex.mappers.NoticeMapper";

	@Override
	public void insert(NoticeDTO notice) {
		session.insert(namespace + ".insert", notice);
	}

	@Override
	public List<NoticeDTO> listAll() {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public NoticeUserDTO getuName(int userno) {
		return session.selectOne(namespace + ".getuName", userno);
	}

	@Override
	public NoticeDTO detail(int articleNo) {
		return session.selectOne(namespace + ".detail", articleNo);
	}

	@Override
	public void upCount(int articleNo) {
		session.update(namespace + ".upCount", articleNo);
	}

	@Override
	public void modify(NoticeDTO notice) {
		session.update(namespace + ".modify", notice);
	}

	@Override
	public void delete(int articleNo) {
		session.delete(namespace + ".delete", articleNo);
	}

	@Override
	public List<NoticeDTO> search(String searchOption, String searchWord, int startIndex, int pageSize) {
		Map<String, Object> paraMap = new HashMap<String, Object>();
		paraMap.put("startIndex", startIndex);
		paraMap.put("pageSize", pageSize);
		paraMap.put("searchOption", searchOption);
		paraMap.put("searchWord", searchWord);
		return session.selectList(namespace + ".search", paraMap);

	}

	@Override
	public void insertComment(NoticeDTO notice) {
		session.insert(namespace+".insertComment", notice);
		
	}

	@Override
	public void updateOrder(int group, int order) {
		Map<String, Object> paraMap = new HashMap<String,Object>();
		paraMap.put("group", group);
		paraMap.put("order", order);
		session.update(namespace+".updateOrder", paraMap);
		
	}

	@Override
	public void deleteNotice(int articleNo) {
		session.update(namespace + ".deleteNotice", articleNo);
		
	}

	@Override
	public int selectBoardListCnt(NoticeDTO notice, String searchOption, String searchWord) {
		Map<String, Object> paraMap = new HashMap<String, Object>();
		paraMap.put("notice", notice);
		paraMap.put("searchOption", searchOption);
		paraMap.put("searchWord", searchWord);
		return session.selectOne(namespace+".cnt", paraMap);
	}

}

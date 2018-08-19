package com.ex.ex.notice.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.notice.domain.NoticeReplyDTO;
@Repository
public class NoticeReplyDAOImpl implements NoticeReplyDAO {
	@Inject
	private SqlSession session;

	private static String namespace = "com.ex.ex.mappers.NoticeReplyMapper";

	@Override
	public List<NoticeReplyDTO> listAll(int articleNo) {
		return session.selectList(namespace + ".listAll", articleNo);
	}

	@Override
	public void insert(NoticeReplyDTO reply) {
		session.insert(namespace + ".insert", reply);
	}
}

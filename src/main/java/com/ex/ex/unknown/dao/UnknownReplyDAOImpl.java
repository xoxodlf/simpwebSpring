package com.ex.ex.unknown.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ex.ex.unknown.domain.UnknownReplyDTO;
@Repository
public class UnknownReplyDAOImpl implements UnknownReplyDAO {
	@Inject
	private SqlSession session;
	private static String namespace="com.ex.ex.mappers.UnknownReplyMapper";
	@Override
	public List<UnknownReplyDTO> listAll(int articleNo) {
		return session.selectList(namespace+".listAll", articleNo);
	}

	@Override
	public void insert(UnknownReplyDTO reply) {
		session.insert(namespace+".insert", reply);
	}

}

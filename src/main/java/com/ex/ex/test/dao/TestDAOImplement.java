package com.ex.ex.test.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.ex.ex.test.domain.UserDTO;

@Repository
public class TestDAOImplement implements TestDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.ex.ex.mappers.TestMapper";
	
	Logger logger = Logger.getLogger(TestDAOImplement.class);

	@Override
	public List<UserDTO> DBCheck() {
		return sqlSession.selectList(namespace + ".DBCheck");
	}

}

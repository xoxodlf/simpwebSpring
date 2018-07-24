package com.ex.ex.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ex.ex.test.dao.TestDAO;
import com.ex.ex.test.domain.UserDTO;

@Service
public class TestServiceImplement implements TestService {
	
	@Inject
	private TestDAO dao;
	
	@Override
	public List<UserDTO> DBCheck() {
		return dao.DBCheck();
	}

}

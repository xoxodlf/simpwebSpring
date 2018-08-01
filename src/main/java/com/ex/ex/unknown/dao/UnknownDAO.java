package com.ex.ex.unknown.dao;

import java.util.List;

import com.ex.ex.unknown.domain.UnknownDTO;

public interface UnknownDAO {
	public void insert(UnknownDTO unknown);
	public List<UnknownDTO> listAll();
	public void modify(UnknownDTO unknown);
	public void delete(int articleNo);
	public UnknownDTO detail(int articleNo);
	public void upCount(int articleNo);
	public List<UnknownDTO> listSearch(String searchType, String keyword);
}

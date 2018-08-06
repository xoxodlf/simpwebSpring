package com.ex.ex.unknown.service;

import java.util.List;

import com.ex.ex.unknown.domain.UnknownDTO;

public interface UnknownService {
	public void insert(UnknownDTO unknown);
	public List<UnknownDTO> listAll();
	public void modify(UnknownDTO unknown);
	public void delete(int articleNo);
	public UnknownDTO detail(int articleNo);
	public void upCount(int articleNo);
	public List<UnknownDTO> listSearch(String searchType, String keyword);
	public void updateOrder(int group,int order);
	public void insertComment(UnknownDTO unknown);
	public void deleteModify(int articleNo);
}

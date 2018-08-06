package com.ex.ex.unknown.dao;

import java.util.List;

import com.ex.ex.unknown.domain.UnknownReplyDTO;

public interface UnknownReplyDAO {
	public List<UnknownReplyDTO> listAll(int articleNo);
	public void insert(UnknownReplyDTO reply);
}

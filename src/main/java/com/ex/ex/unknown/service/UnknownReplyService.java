package com.ex.ex.unknown.service;

import java.util.List;

import com.ex.ex.unknown.domain.UnknownReplyDTO;

public interface UnknownReplyService {
	public List<UnknownReplyDTO> listAll(int articleNo);
	public void insert(UnknownReplyDTO reply);
}

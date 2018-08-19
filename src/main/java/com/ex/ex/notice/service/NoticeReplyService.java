package com.ex.ex.notice.service;

import java.util.List;

import com.ex.ex.notice.domain.NoticeReplyDTO;

public interface NoticeReplyService {
	public List<NoticeReplyDTO> listAll(int articleNo);

	public void insert(NoticeReplyDTO reply);
}

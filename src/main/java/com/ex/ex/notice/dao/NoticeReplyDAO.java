package com.ex.ex.notice.dao;

import java.util.List;

import com.ex.ex.notice.domain.NoticeReplyDTO;

public interface NoticeReplyDAO {
	public List<NoticeReplyDTO> listAll(int articleNo);
	public void insert(NoticeReplyDTO reply);
}

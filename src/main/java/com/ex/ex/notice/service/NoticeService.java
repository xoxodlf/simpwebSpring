package com.ex.ex.notice.service;

import java.util.List;

import com.ex.ex.notice.domain.NoticeDTO;
import com.ex.ex.notice.domain.NoticeUserDTO;

public interface NoticeService {
	public void insert(NoticeDTO notice);
	public List<NoticeDTO> listAll();
	public NoticeUserDTO getuName(int userno);
	public NoticeDTO detail(int articleNo);
	public void upCount(int articleNo);
	public void modify(NoticeDTO notice);
	public void delete(int articleNo);
	public List<NoticeDTO> search(String searchOption, String searchWord, int startIndex, int pageSize);
	public void insertComment(NoticeDTO notice);
	public void updateOrder(int group,int order);
	public void deleteNotice(int articleNo);
	public int selectBoardListCnt(NoticeDTO notice,String searchOption, String searchWord);
	
}

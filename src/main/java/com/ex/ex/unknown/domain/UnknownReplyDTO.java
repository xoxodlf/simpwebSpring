package com.ex.ex.unknown.domain;

import java.util.Date;

public class UnknownReplyDTO {
	private int commentNo;
	private String cContent;
	private int articleNo;
	private int userNo;
	private Date cDate;
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public int getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	@Override
	public String toString() {
		return "UnknownReplyDTO [commentNo=" + commentNo + ", cContent=" + cContent + ", articleNo=" + articleNo
				+ ", userNo=" + userNo + ", cDate=" + cDate + "]";
	}
	
	
	
	
}

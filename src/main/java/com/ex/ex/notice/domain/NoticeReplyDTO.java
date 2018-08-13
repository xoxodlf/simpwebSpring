package com.ex.ex.notice.domain;

import java.sql.Date;

public class NoticeReplyDTO {

	private int commentNo;
	private int userNo;
	private String cContent;
	private int articleNo;
	private String cTitle;
	private Date cDate;
	private String userName;

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public String getcTitle() {
		return cTitle;
	}

	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "NoticeReplyDTO [commentNo=" + commentNo + ", userNo=" + userNo + ", cContent=" + cContent
				+ ", articleNo=" + articleNo + ", cTitle=" + cTitle + ", cDate=" + cDate + ", userName=" + userName
				+ "]";
	}



}

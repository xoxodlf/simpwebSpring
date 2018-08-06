package com.ex.ex.notice.domain;

import java.sql.Date;

public class NoticeDTO {

	private int articleNo;
	private int userNo;
	private String aContent;
	private int boardNo;
	private String aTitle;
	private Date aDate;
	private int aViewCount;
	private String userName;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getaTitle() {
		return aTitle;
	}

	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	public int getaViewCount() {
		return aViewCount;
	}

	public void setaViewCount(int aViewCount) {
		this.aViewCount = aViewCount;
	}

	@Override
	public String toString() {
		return "NoticeDTO [articleNo=" + articleNo + ", userNo=" + userNo + ", aContent=" + aContent + ", boardNo="
				+ boardNo + ", aTitle=" + aTitle + ", aDate=" + aDate + ", aViewCount=" + aViewCount + "]";
	}

}

package com.ex.ex.report.domain;

import java.sql.Date;

public class ReportDTO {
	private int articleNo;
	private int userNo;
	private String aContent;
	private int boardNo;
	private String aTitle;
	private Date aDate;
	private int aViewCount;
	
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
		return "ReportDTO [articleNo=" + articleNo + ", userNo=" + userNo + ", aContent=" + aContent + ", boardNo="
				+ boardNo + ", aTitle=" + aTitle + ", aDate=" + aDate + ", aViewCount="
				+ aViewCount + "]";
	}
	
	
}

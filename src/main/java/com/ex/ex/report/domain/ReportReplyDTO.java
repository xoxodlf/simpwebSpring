package com.ex.ex.report.domain;

import java.sql.Date;

public class ReportReplyDTO {
	private int userNo;
	private String cContent;
	private int articleNo;
	private Date cDate;

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

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	@Override
	public String toString() {
		return "ReportReplyDTO [userNo=" + userNo + ", cContent=" + cContent + ", articleNo=" + articleNo + ", cDate="
				+ cDate + "]";
	}

}

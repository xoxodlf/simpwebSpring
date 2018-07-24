package com.ex.ex.test.domain;


public class ArticleDTO {
	private int articleNo;
	private String title;
	private String content;
	private String regdate;
	private int viewCount;
	public int getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	@Override
	public String toString() {
		return "ArticleDTO [articleNo=" + articleNo + ", title=" + title + ", content=" + content + ", regdate="
				+ regdate + ", viewCount=" + viewCount + "]";
	}
	
	
	
	
}

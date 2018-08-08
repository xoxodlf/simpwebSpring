package com.ex.ex.unknown.service;

public class UnknownPagination {
	private int pageSize=10;
	private int groupSize=5;
	private int curPage=1;
	private int curGroup=1;
	private int articleCnt;
	private int pageCnt;
	private int groupCnt;
	private int startPage=1;
	private int endPage=1;
	private int startIndex=0;
	private int prevPage;
	private int nextPage;
	
	public UnknownPagination(int articleCnt, int curPage) {
		setArticleCnt(articleCnt);
		setCurPage(curPage);
		setPageCnt(articleCnt);
		setGroupCnt(pageCnt);
		groupSetting(curPage);
		setStartIndex(curPage);
	}
	
	public void setPageCnt(int articleCnt) {
		this.pageCnt=(int)Math.ceil(articleCnt*1.0/pageSize);
	}
	
	public void setGroupCnt(int pageCnt) {
		this.groupCnt = (int) Math.ceil(pageCnt*1.0/groupSize);
	}
	
	public void groupSetting(int curPage) {
		setCurGroup(curPage);        
        this.startPage = (curGroup - 1) * groupSize + 1;
        this.endPage = startPage + groupSize - 1;
        
        if(endPage > pageCnt){
            this.endPage = pageCnt;
        }
        
        this.prevPage = curPage - 1;
        this.nextPage = curPage + 1;
    }
    public void setCurGroup(int curPage) {
        this.curGroup = (int)((curPage-1)/groupSize) + 1;
    }
    public void setStartIndex(int curPage) {
        this.startIndex = (curPage-1) * pageSize;
    }
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getGroupSize() {
		return groupSize;
	}
	public void setGroupSize(int groupSize) {
		this.groupSize = groupSize;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getCurGroup() {
		return curGroup;
	}
	public int getArticleCnt() {
		return articleCnt;
	}
	public void setArticleCnt(int articleCnt) {
		this.articleCnt = articleCnt;
	}
	public int getGroupCnt() {
		return groupCnt;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	@Override
	public String toString() {
		return "UnknownPagination [pageSize=" + pageSize + ", groupSize=" + groupSize + ", curPage=" + curPage
				+ ", curGroup=" + curGroup + ", articleCnt=" + articleCnt + ", groupCnt=" + groupCnt + ", startPage="
				+ startPage + ", endPage=" + endPage + ", startIndex=" + startIndex + ", prevPage=" + prevPage
				+ ", nextPage=" + nextPage + "]";
	}
	
	
}

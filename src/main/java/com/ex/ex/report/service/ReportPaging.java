package com.ex.ex.report.service;

public class ReportPaging {
	private int pageSize = 10;
	private int groupSize = 5;
	private int curPage = 1;
	private int curGroup = 1;
	private int articleCnt;
	private int pageCnt;
	private int groupCnt;
	private int startPage = 1;
	private int endPage = 1;
	private int startIndex = 0;
	private int prevPage;
	private int nextPage;
	
	public ReportPaging(int articleCnt, int curPage) {
		setArticleCnt(articleCnt);
		setCurPage(curPage);
		setPageCnt(articleCnt);
		setGroupCnt(pageCnt);
		groupSetting(curPage);
		setStartIndex(curPage);
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

	public void setCurGroup(int curGroup) {
		this.curGroup = curGroup;
	}

	public int getArticleCnt() {
		return articleCnt;
	}

	public void setArticleCnt(int articleCnt) {
		this.articleCnt = articleCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getGroupCnt() {
		return groupCnt;
	}

	public void setGroupCnt(int groupCnt) {
		this.groupCnt = groupCnt;
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

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
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
		return "ReportPaging [pageSize=" + pageSize + ", groupSize=" + groupSize + ", curPage=" + curPage
				+ ", curGroup=" + curGroup + ", articleCnt=" + articleCnt + ", pageCnt=" + pageCnt + ", groupCnt="
				+ groupCnt + ", startPage=" + startPage + ", endPage=" + endPage + ", startIndex=" + startIndex
				+ ", prevPage=" + prevPage + ", nextPage=" + nextPage + "]";
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
}

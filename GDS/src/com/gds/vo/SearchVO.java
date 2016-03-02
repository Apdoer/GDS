package com.gds.vo;

import java.util.List;

public class SearchVO {

	private int maxPageSize = 10;
	private int maxLinkCount = 9; 
	
	private int lastPageIndex;
	
	private int currentPage;
	private int startRowIndex;
	private int endRowIndex;
	private int startPageIndex;
	private int endPageIndex;
	
	private List<?> result;
	
	public SearchVO() {
		this.currentPage = 1;
	}

	public void initPagination(int totalCount) {
		// pagination init
		lastPageIndex = (int) Math.ceil(1.0 * totalCount / maxPageSize);
		
		startRowIndex = (currentPage - 1) * maxPageSize;
		endRowIndex = startRowIndex + maxPageSize;
		
		startPageIndex = Math.max(currentPage - maxLinkCount / 2, 1);
		endPageIndex = Math.min(currentPage + maxLinkCount / 2, lastPageIndex);
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public List<?> getResult() {
		return result;
	}

	public void setResult(List<?> result) {
		this.result = result;
	}

	public int getStartPageIndex() {
		return startPageIndex;
	}
	
	public int getEndPageIndex() {
		return endPageIndex;
	}

	public void setMaxPageSize(int maxPageSize) {
		this.maxPageSize = maxPageSize;
	}

	public void setMaxLinkCount(int maxLinkCount) {
		this.maxLinkCount = maxLinkCount % 2 == 0 ? maxLinkCount - 1 : maxLinkCount;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SearchVO [maxPageSize=");
		builder.append(maxPageSize);
		builder.append(", maxLinkCount=");
		builder.append(maxLinkCount);
		builder.append(", lastPageIndex=");
		builder.append(lastPageIndex);
		builder.append(", currentPage=");
		builder.append(currentPage);
		builder.append(", startRowIndex=");
		builder.append(startRowIndex);
		builder.append(", endRowIndex=");
		builder.append(endRowIndex);
		builder.append(", startPageIndex=");
		builder.append(startPageIndex);
		builder.append(", endPageIndex=");
		builder.append(endPageIndex);
		builder.append(", result=");
		builder.append(result);
		builder.append("]");
		return builder.toString();
	}

}

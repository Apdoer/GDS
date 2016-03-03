package com.gds.vo;

public class CounselVO {
	
	private int id;
	private String delyn;
	private String regdate;
	private int categoryId;
	private String counseleeName;
	private String counseleeTelno;
	private String possibleTime;
	private String detail;
	private String memo;
	private String doneyn;
	
	public CounselVO() {
		super();
	}

	public CounselVO(int id, String delyn, String regdate, int categoryId,
			String counseleeName, String counseleeTelno, String possibleTime,
			String detail, String memo, String doneyn) {
		super();
		this.id = id;
		this.delyn = delyn;
		this.regdate = regdate;
		this.categoryId = categoryId;
		this.counseleeName = counseleeName;
		this.counseleeTelno = counseleeTelno;
		this.possibleTime = possibleTime;
		this.detail = detail;
		this.memo = memo;
		this.doneyn = doneyn;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDelyn() {
		return delyn;
	}

	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCounseleeName() {
		return counseleeName;
	}

	public void setCounseleeName(String counseleeName) {
		this.counseleeName = counseleeName;
	}

	public String getCounseleeTelno() {
		return counseleeTelno;
	}

	public void setCounseleeTelno(String counseleeTelno) {
		this.counseleeTelno = counseleeTelno;
	}

	public String getPossibleTime() {
		return possibleTime;
	}

	public void setPossibleTime(String possibleTime) {
		this.possibleTime = possibleTime;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getDoneyn() {
		return doneyn;
	}

	public void setDoneyn(String doneyn) {
		this.doneyn = doneyn;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Counsel [id=");
		builder.append(id);
		builder.append(", delyn=");
		builder.append(delyn);
		builder.append(", regdate=");
		builder.append(regdate);
		builder.append(", categoryId=");
		builder.append(categoryId);
		builder.append(", counseleeName=");
		builder.append(counseleeName);
		builder.append(", counseleeTelno=");
		builder.append(counseleeTelno);
		builder.append(", possibleTime=");
		builder.append(possibleTime);
		builder.append(", detail=");
		builder.append(detail);
		builder.append(", memo=");
		builder.append(memo);
		builder.append(", doneyn=");
		builder.append(doneyn);
		builder.append("]");
		return builder.toString();
	}
	
	
		
	

}

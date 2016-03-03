package com.gds.vo;

import java.util.Date;

public class BoardVO {

	private int id;
	private String type;
	private String delyn;
	private Date regdate;
	private String title;
	private String content;
	private int cnt;
	
	public BoardVO() {}

	public BoardVO(int id, String type, String delyn, Date regdate, String title, String content, int cnt) {
		this.id = id;
		this.type = type;
		this.delyn = delyn;
		this.regdate = regdate;
		this.title = title;
		this.content = content;
		this.cnt = cnt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDelyn() {
		return delyn;
	}

	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BoardVO [id=");
		builder.append(id);
		builder.append(", type=");
		builder.append(type);
		builder.append(", delyn=");
		builder.append(delyn);
		builder.append(", regdate=");
		builder.append(regdate);
		builder.append(", title=");
		builder.append(title);
		builder.append(", content=");
		builder.append(content);
		builder.append(", cnt=");
		builder.append(cnt);
		builder.append("]");
		return builder.toString();
	}
	
}
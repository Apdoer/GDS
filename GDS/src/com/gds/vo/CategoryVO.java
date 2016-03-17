package com.gds.vo;

public class CategoryVO extends SearchVO{
	
	private int id;
	private String name;
	private int seq;
	private String delyn;
	
	public CategoryVO() {}

	public CategoryVO(int id, String name, int seq, String delyn) {
		this.id = id;
		this.name = name;
		this.seq = seq;
		this.delyn = delyn;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getDelyn() {
		return delyn;
	}

	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CategoryVO [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", seq=");
		builder.append(seq);
		builder.append(", delyn=");
		builder.append(delyn);
		builder.append("]");
		return builder.toString();
	}

}

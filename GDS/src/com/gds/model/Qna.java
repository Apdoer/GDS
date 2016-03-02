package com.gds.model;

import java.util.Date;

public class Qna {

	private int id;
	private String delyn;
	private String openyn;
	private Date regdate;
	private Date regdateAnswer;
	private String name;
	private String password;
	private String title;
	private String question;
	private String answer;
	private int cnt;
	
	public Qna() {}
	
	public Qna(int id, String delyn, String openyn, Date regdate, Date regdateAnswer, String name, String password,
			String title, String question, String answer, int cnt) {
		this.id = id;
		this.delyn = delyn;
		this.openyn = openyn;
		this.regdate = regdate;
		this.regdateAnswer = regdateAnswer;
		this.name = name;
		this.password = password;
		this.title = title;
		this.question = question;
		this.answer = answer;
		this.cnt = cnt;
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

	public String getOpenyn() {
		return openyn;
	}

	public void setOpenyn(String openyn) {
		this.openyn = openyn;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getRegdateAnswer() {
		return regdateAnswer;
	}

	public void setRegdateAnswer(Date regdateAnswer) {
		this.regdateAnswer = regdateAnswer;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
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
		builder.append("Qna [id=");
		builder.append(id);
		builder.append(", delyn=");
		builder.append(delyn);
		builder.append(", openyn=");
		builder.append(openyn);
		builder.append(", regdate=");
		builder.append(regdate);
		builder.append(", regdateAnswer=");
		builder.append(regdateAnswer);
		builder.append(", name=");
		builder.append(name);
		builder.append(", password=");
		builder.append(password);
		builder.append(", title=");
		builder.append(title);
		builder.append(", question=");
		builder.append(question);
		builder.append(", answer=");
		builder.append(answer);
		builder.append(", cnt=");
		builder.append(cnt);
		builder.append("]");
		return builder.toString();
	}
	
}

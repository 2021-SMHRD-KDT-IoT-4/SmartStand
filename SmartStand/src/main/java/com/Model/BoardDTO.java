package com.Model;

public class BoardDTO {

	private int num;
	private String sendName;
	private String myEmail;
	private String message;
	private String day;
	private String category;

	public BoardDTO(int num, String sendName, String category, String myEmail, String message, String day) {
		this.num = num;
		this.sendName = sendName;
		this.category = category;
		this.myEmail = myEmail;
		this.message = message;
		this.day = day;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public String getMyEmail() {
		return myEmail;
	}

	public void setMyEmail(String myEmail) {
		this.myEmail = myEmail;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}

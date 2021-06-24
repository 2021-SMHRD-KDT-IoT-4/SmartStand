package com.model;

public class BoardDTO {

	private int num;
	private String Qtitle;
	private String sendName;
	
	private String category;
	private String message;
	private String day;
	
	
	
	
	
	
	public BoardDTO(String qtitle, String category, String message) {
		super();
		Qtitle = qtitle;
		this.category = category;
		this.message = message;
	}
	
	public BoardDTO(int num, String qtitle, String sendName, String category, String message, String day) {
		super();
		this.num = num;
		Qtitle = qtitle;
		this.sendName = sendName;
		this.category = category;
		this.message = message;
		this.day = day;
	}
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getQtitle() {
		return Qtitle;
	}
	public void setQtitle(String qtitle) {
		Qtitle = qtitle;
	}
	public String getSendName() {
		return sendName;
	}
	public void setSendName(String sendName) {
		this.sendName = sendName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	

	

}

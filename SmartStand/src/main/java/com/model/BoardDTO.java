package com.model;

public class BoardDTO {

	private int num;
	private String Qtitle;
	private String id;
	private String category;	
	private String message;
	private String day;
	
	/////////////////////////////////////
	public BoardDTO(int num, String qtitle, String id, String category, String message, String day) {
		super();
		this.num = num;
		Qtitle = qtitle;
		this.id = id;
		this.category = category;
		this.message = message;
		this.day = day;
	}

	public BoardDTO(String qtitle, String category, String message) {
		super();
		Qtitle = qtitle;
		this.category = category;
		this.message = message;
	}

	
	////////////////////////////////
	
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

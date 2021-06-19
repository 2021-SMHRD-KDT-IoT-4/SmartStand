package com.Model;

public class MemberDTO {

	private String user_Id;
	private String user_Pw;
	private String user_Name;
	private String user_Tel;
	private String user_Addr;
	private String user_Email;
	
	
	//////////////////////////////////////////////////////
	
	public MemberDTO(String user_Id, String user_Pw, String user_Name, String user_Tel, String user_Addr,
			String user_Email) {
		super();
		this.user_Id = user_Id;
		this.user_Pw = user_Pw;
		this.user_Name = user_Name;
		this.user_Tel = user_Tel;
		this.user_Addr = user_Addr;
		this.user_Email = user_Email;
	}

/////////////////////////////////////////////////////////
	

	public String getUser_Id() {
		return user_Id;
	}


	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}


	public String getUser_Pw() {
		return user_Pw;
	}


	public void setUser_Pw(String user_Pw) {
		this.user_Pw = user_Pw;
	}


	public String getUser_Name() {
		return user_Name;
	}


	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}


	public String getUser_Tel() {
		return user_Tel;
	}


	public void setUser_Tel(String user_Tel) {
		this.user_Tel = user_Tel;
	}


	public String getUser_Addr() {
		return user_Addr;
	}


	public void setUser_Addr(String user_Addr) {
		this.user_Addr = user_Addr;
	}


	public String getUser_Email() {
		return user_Email;
	}


	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}
	
	
}

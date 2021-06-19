package com.Model;

public class MusicDTO {
	
	private int num = 0;
	private String song = null;
	private String singer = null;
	private String genre = null; //장르
	private String cls = null; //분류(song,asmr,voice)
	private String mood = null; //분위기
	
	public MusicDTO(int num, String song, String singer, String genre, String cls, String mood) {
		super();
		this.num = num;
		this.song = song;
		this.singer = singer;
		this.genre = genre;
		this.cls = cls;
		this.mood = mood;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getCls() {
		return cls;
	}
	public void setCls(String cls) {
		this.cls = cls;
	}
	public String getMood() {
		return mood;
	}
	public void setMood(String mood) {
		this.mood = mood;
	}
	
	

}

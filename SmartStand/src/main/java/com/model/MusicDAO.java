package com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MusicDAO {
	
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	MusicDTO info = null; // **
	ArrayList<MusicDTO> list = null;

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "rain"; 
			String db_pw = "rainto";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				psmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	public ArrayList<MusicDTO> songRecoGenre(String genre) { //노래추천(장르)
		   list = new ArrayList<MusicDTO>();
		      conn();
		      try {
		    	  String sql = "select * from web_music1 where genre = ? ";
		         psmt = conn.prepareStatement(sql);
		         psmt.setString(1, genre);
		         rs = psmt.executeQuery();
		         
		        while(rs.next()) {
		        	
		        	int num = rs.getInt(1);
		        	String song = rs.getString(2);
		        	String singer = rs.getString(3);
		        	genre = rs.getString(4);
		            String cls = rs.getString(5);
		            String mood = rs.getString(6);
		            
		            info = new MusicDTO(num, song, singer, genre, cls, mood);
		            list.add(info);
		         }
		      } catch (SQLException e) {
		         e.printStackTrace();
		      } finally {
		         close();
		      }
		      return list;
		   }
	
	
	
	
	
	public ArrayList<MusicDTO> songRecoMood(String mood) { //노래추천(분위기)
		   list = new ArrayList<MusicDTO>();
		      conn();
		      try {
		    	  String sql = "select * from web_music where mood = ? ";
		         psmt = conn.prepareStatement(sql);
		         psmt.setString(1, mood);
		         rs = psmt.executeQuery();
		         
		        while(rs.next()) {
		        	
		        	int num = rs.getInt(1);
		        	String song = rs.getString(2);
		        	String singer = rs.getString(3);
		        	String genre = rs.getString(4);
		            String cls = rs.getString(5);
		            mood = rs.getString(6);
		            
		            info = new MusicDTO(num, song, singer, genre, cls, mood);
		            list.add(info);
		         }
		      } catch (SQLException e) {
		         e.printStackTrace();
		      } finally {
		         close();
		      }
		      return list;
		   }

	public ArrayList<MusicDTO> songList(String cls) { //분류별 노래 리스트 
		   list = new ArrayList<MusicDTO>();
		      conn();
		      try {
		    	  String sql = "select * from web_music where cls = ? ";
		         psmt = conn.prepareStatement(sql);
		         psmt.setString(1, cls);
		         rs = psmt.executeQuery();
		         
		        while(rs.next()) {
		        	
		        	int num = rs.getInt(1);
		        	String song = rs.getString(2);
		        	String singer = rs.getString(3);
		        	String genre = rs.getString(4);
		            cls = rs.getString(5);
		            String mood = rs.getString(6);
		            
		            info = new MusicDTO(num, song, singer, genre, cls, mood);
		            list.add(info);
		         }
		      } catch (SQLException e) {
		         e.printStackTrace();
		      } finally {
		         close();
		      }
		      return list;
		   }
	
	

	

}

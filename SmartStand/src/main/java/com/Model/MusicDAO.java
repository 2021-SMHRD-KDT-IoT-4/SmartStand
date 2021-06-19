package com.Model;
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
			String db_id = "hr";
			String db_pw = "hr";
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
	

	
	public ArrayList<MusicDTO> songRecoMood() { //노래추천(분위기)
		   list = new ArrayList<MusicDTO>();
		      conn();
		      try {
		    	  String sql = "select * from web_member where mood = ? ";
		         psmt = conn.prepareStatement(sql);
		         rs = psmt.executeQuery();
		         
		        while(rs.next()) {
		        	
		        	int num = rs.getInt(1);
		        	String song = rs.getString(2);
		        	String singer = rs.getString(3);
		        	String genre = rs.getString(4);
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

	public ArrayList<MusicDTO> songRecoGenre() { //노래추천(장르)
		   list = new ArrayList<MusicDTO>();
		      conn();
		      try {
		    	  String sql = "select * from web_member where genre = ? ";
		         psmt = conn.prepareStatement(sql);
		         rs = psmt.executeQuery();
		         
		        while(rs.next()) {
		        	
		        	int num = rs.getInt(1);
		        	String song = rs.getString(2);
		        	String singer = rs.getString(3);
		        	String genre = rs.getString(4);
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
	
	

	

}

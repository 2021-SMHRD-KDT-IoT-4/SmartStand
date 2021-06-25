package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ArrayList<BoardDTO> list = null;
	BoardDTO info = null;

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
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
	}

	public int insertMessage(BoardDTO dto,String id) {
		conn();
		String sql = "insert into web_board values(web_board_num_seq.nextval, ?, ?, ?, ?, sysdate,?)";

		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getQtitle());
			psmt.setString(2, id);
			psmt.setString(3, dto.getCategory());
			psmt.setString(4, dto.getMessage());
			psmt.setString(5, dto.getAnwser());
			
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
			
		}
		return cnt;
		
	}
	
	public ArrayList<BoardDTO> select(String name) {
		list = new ArrayList<BoardDTO>();
		conn();
		
		try {
			String sql = "select * from web_board where myEmail =?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String sendName = rs.getString(2);
				String category = rs.getString(3);
				String myEmail = rs.getString(4);
				String message = rs.getString(5);
				String day = rs.getString(6);
				
				info = new BoardDTO(num, sendName, category, myEmail, message, day);
				list.add(info);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public int DeleteAllMessage(String id) {
		conn();
		
		try {
			String sql = "delete from web_board where myEmail = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			cnt = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public int DelOneMessage(String num) {
		conn();
		
		try {
			String sql = "delete from web_board where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			cnt = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
public ArrayList<BoardDTO> showBoard() {
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		conn();
		
		String sql = "select * from web_board order by day desc";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			while(rs.next()) {
				int num = rs.getInt(1);
				String id = rs.getString(3);
				String Qtilte = rs.getString(2);
				String category = rs.getString(4);
				String Message = rs.getString(5);
				String day = rs.getString(6);
				String anwser = rs.getString(7);
				
				info = new BoardDTO(num, id, Qtilte, category, Message, day,anwser);
				
				list.add(info);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}

public BoardDTO showOne(int board_num) {
	
	conn();
	
	String sql = "select * from web_board where num = ?";
	
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, board_num);
		
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			
			int num = rs.getInt(1);
			String Qtilte = rs.getString(2);
			String id = rs.getString(3);
			String category = rs.getString(4);
			String message = rs.getString(5);
			String day = rs.getString(6);
			String anwser = rs.getString(7);
			
			info = new BoardDTO(num, Qtilte, id, category, message, day,anwser);
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return info;
}



public int update(BoardDTO dto, String id) {
	conn();
	
			String sql = "update web_board set anwser = ? where id = ?";
			
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getAnwser());
				psmt.setString(2, id);
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
	
			return cnt;
}



  public int AnwserMessage(BoardDTO dto,String id) {
	  conn(); 
	  String sql ="insert into web_board values(web_board_num_seq.nextval, ?, ?, ?, ?, sysdate,?)";
  
  try { psmt = conn.prepareStatement(sql);
  
  psmt.setString(1, dto.getQtitle()); 
  psmt.setString(2, id); 
  psmt.setString(3,dto.getCategory()); 
  psmt.setString(4, dto.getMessage()); 
  psmt.setString(5,dto.getAnwser());
  
  cnt = psmt.executeUpdate();
  
  } catch (SQLException e) { e.printStackTrace(); } finally { close();
  
  } return cnt;
  
  }
 


public BoardDTO Anwsershow(int board_num) {
	
	conn();
	
	String sql = "select * from web_board where num = ?";
	
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, board_num);
		
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			
			int num = rs.getInt(1);
			String Qtilte = rs.getString(2);
			String id = rs.getString(3);
			String category = rs.getString(4);
			String message = rs.getString(5);
			String day = rs.getString(6);
			String anwser = rs.getString(7);
			
			info = new BoardDTO(num, Qtilte, id, category, message, day,anwser);
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return info;
}

	
}

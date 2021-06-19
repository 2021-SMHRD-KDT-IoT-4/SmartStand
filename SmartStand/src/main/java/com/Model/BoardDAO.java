package com.Model;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//
//public class BoardDAO {
//	Connection conn = null;
//	PreparedStatement psmt = null;
//	int cnt = 0;
//	ResultSet rs = null;
//	ArrayList<BoardDTO> list = null;
//	BoardDTO info = null;
//
//	public void conn() {
//
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//
//			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
//			String db_id = "hr";
//			String db_pw = "hr";
//
//			conn = DriverManager.getConnection(db_url, db_id, db_pw);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//	}
//
//	public void close() {
//
//		try {
//			if (rs != null) {
//				rs.close();
//			}
//			if (psmt != null) {
//				psmt.close();
//			}
//			if (conn != null) {
//				conn.close();
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//
//		}
//	}
//
//	public int insertMessage(BoardDTO dto) {
//		conn();
//		String sql = "insert into web_message values(num_message.nextval, ?, ?, ?, sysdate)";
//
//		try {
//			psmt = conn.prepareStatement(sql);
//
//			psmt.setString(1, dto.getSendName());
//			psmt.setString(2, dto.getReceiveEmail());
//			psmt.setString(3, dto.getMessage());
//			
//			cnt = psmt.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//			
//		}
//		return cnt;
//		
//	}
//	
//	public ArrayList<MessageDTO> select(String name) {
//		list = new ArrayList<MessageDTO>();
//		conn();
//		
//		try {
//			String sql = "select * from web_message where receiveEmail =?";
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, name);
//			rs = psmt.executeQuery();
//			
//			while(rs.next()) {
//				int num = rs.getInt(1);
//				String sendName = rs.getString(2);
//				String receiveEmail = rs.getString(3);
//				String message = rs.getString(4);
//				String day = rs.getString(5);
//				
//				info = new MessageDTO(num, sendName, receiveEmail, message, day);
//				list.add(info);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return list;
//	}
//	
//	public int DeleteAllMessage(String id) {
//		conn();
//		
//		try {
//			String sql = "delete from web_message where receiveEmail = ?";
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, id);
//			cnt = psmt.executeUpdate();
//			
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//		return cnt;
//	}
//	
//	public int DelOneMessage(String num) {
//		conn();
//		
//		try {
//			String sql = "delete from web_message where num = ?";
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, num);
//			cnt = psmt.executeUpdate();
//			
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//		return cnt;
//	}
//}

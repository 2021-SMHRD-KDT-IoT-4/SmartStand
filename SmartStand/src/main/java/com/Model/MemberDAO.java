package com.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0 ;
	MemberDTO info = null;
	ResultSet rs = null;
	ArrayList<MemberDTO> list = null;
	
	
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
				if(rs != null) {
					rs.close();
				}
				if(psmt != null) {
				psmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public int join(MemberDTO dto) {
		
		conn();
		
		String sql = "insert into web_member values(?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getAddr());
			psmt.setString(6, dto.getEmail());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	
	public MemberDTO login(MemberDTO dto) {
		conn();
		
		String sql = "select * from web_member where id=? and pw=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
		
			if(rs.next()) {
				String id = rs.getString(1); 
				String pw = rs.getString(2);
				String name = rs.getString(3); 
				String tel = rs.getString(4); 
				String addr = rs.getString(5); 
				String email = rs.getString(6); 
				
				info = new MemberDTO(id, pw, name, tel,addr,email);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
	}
	
	
	public int update(MemberDTO dto) {
		conn();
		
				String sql = "update web_member set pw=?, tel=?, address=?, email=? where id=?";
				
				try {
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, dto.getPw());
					psmt.setString(2, dto.getTel());
					psmt.setString(3, dto.getAddr());
					psmt.setString(4, dto.getEmail());
					psmt.setString(5, dto.getId());
					
					cnt = psmt.executeUpdate();
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close();
				}
		
				return cnt;
	}
	
	public ArrayList<MemberDTO> select() {
		
		list = new ArrayList<MemberDTO>();
		conn();
		
			String sql = "select * from web_member";
			
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					String user_Id = rs.getString(1);
					String user_Pw = rs.getString(2); 
					String user_Name = rs.getString(3); 
					String user_Tel = rs.getString(4); 
					String user_Addr = rs.getString(5); 
					String user_Email = rs.getString(6); 
					
					info =  new MemberDTO(user_Id, user_Pw, user_Name, user_Tel,user_Addr,user_Email);
					list.add(info);
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			
			return list;
	}
	
	public boolean idcheck(String id) {
		
		conn();
		
		boolean check = true;
		
		try {
			String sql = "select * from web_member where id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				check=false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return check;
		
	}
	
	
}

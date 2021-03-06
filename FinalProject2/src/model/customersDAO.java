package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class customersDAO {
	
	int cnt =0;
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	customersVO userInfo = null;
	
	public void conn() {
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String dbid = "hr";
				String dbpw = "hr";
				
				conn = DriverManager.getConnection(url,dbid,dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt != null) {
					psmt.close();
			}if(conn != null) {
				conn.close();
			}
			
			}catch (Exception e) {
					e.printStackTrace();
				}
	}
	
	public int join(String id, String pw, String name, String tel) {
		try {
			conn();
			String sql = "insert into customers values(cusNum.NEXTVAL,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, name);
			psmt.setString(4, tel);
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
		
	}
	public customersVO login(String id, String pw) {
		try {
			conn();
			String sql = "select * from customers where user_Id = ? and user_Pw = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();

			if(rs.next()) {
				int userUid = rs.getInt("user_Uid");
				String userId = rs.getString("user_Id");
				String userPw = rs.getString("user_Pw");
				String userName = rs.getString("user_Name");
				String userTel = rs.getString("user_Tel");
				
				userInfo = new customersVO(userUid, userId, userPw, userName, userTel);
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return userInfo;
			
		}
	}


